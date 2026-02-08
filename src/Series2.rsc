module Series2

import ParseTree;
import IO;
import String;

/*
 * Series 2: Grammars & Parsing
 *
 * In this series, we will define a grammar for JSON and write a simple interpreter/transformer.
 *
 * Documentation: https://www.rascal-mpl.org/docs/GettingStarted/
 */

/*
 * Part 1: Syntax Definition
 *
 * We define the syntax of JSON.
 * - `start syntax`: The entry point of the grammar.
 * - `syntax`: Context-free grammar rules.
 * - `lexical`: Lexical rules (tokens).
 * - `layout`: Whitespace and comments.
 */

start syntax JSON
  = element: Element; // Top-level element

syntax Element
  = object: Object
  | array: Array
  | string: String
  | number: Number
  | boolean: Boolean
  | null: Null;

syntax Object
  = "{" {Member ","}* "}"; // A list of Members separated by commas

syntax Member
  = String key ":" Element value;

syntax Array
  = "[" {Element ","}* "]";

lexical String
  = [\"] ![\"]* [\"]; // Simplified string (no escapes for now)

/*
 * Task 1: Complete the Grammar
 *
 * Define the syntax for `Boolean`, `Null`, and `Number`.
 * - `Boolean`: "true" or "false"
 * - `Null`: "null"
 * - `Number`: One or more digits (simplified), optionally starting with `-`.
 */
syntax Boolean
  = "true" | "false"; // Fill in

syntax Null
  = "null"; // Fill in

lexical Number
  = "-"? [0-9]+; // Fill in (Simplified regex)

layout Whitespace = [\ \t\n\r]* !>> [\ \t\n\r];

/*
 * Part 2: Parsing
 *
 * We can parse a string using the `parse` function.
 * `parse(#type, input)`
 */
void testParse() {
  str input = "{ \"name\": \"Rascal\", \"score\": 100 }";
  Tree t = parse(#start[JSON], input);
  println(t);
}

/*
 * Part 3: Transformation (Concrete Syntax to Abstract Value)
 *
 * We want to transform the parse tree (Concrete Syntax) into a Rascal value (Map, List, etc.).
 *
 * We use pattern matching on the concrete syntax types.
 */

value toValue((Element)`<Object o>`) = toValue(o);
value toValue((Element)`<Array a>`) = toValue(a);
value toValue((Element)`<String s>`) = toValue(s);
value toValue((Element)`<Number n>`) = toInt("<n>"); // Convert concrete Number to int
value toValue((Element)`<Boolean b>`) = ( "<b>" == "true" );
value toValue((Element)`<Null n>`) = "null"(); // Represent null as something specific or just use a placeholder

// Task 2: Implement Object transformation
// Convert a JSON Object to a Rascal `map[str, value]`.
// Hint: Iterate over the members.
map[str, value] toValue((Object)`{<{Member ","}* members>}`) {
  map[str, value] result = ();
  for (Member m <- members) {
     // Extract key and value
     // result += (key : val);
  }
  return result;
}

// Task 3: Implement Array transformation
// Convert a JSON Array to a Rascal `list[value]`.
list[value] toValue((Array)`[<{Element ","}* elements>]`) {
  return []; // Fill in here
}

str toValue((String)`\"<LexicalString content>\"`) {
    return "<content>"; // Remove quotes
}

lexical LexicalString = ![\"]*; // Content inside quotes

