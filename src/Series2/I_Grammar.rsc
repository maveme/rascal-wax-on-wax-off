module Series2::I_Grammar

/*
 * Series 2: Grammars & Parsing
 *
 * In this series, we will define a grammar for JSON and write a simple interpreter/transformer.
 *
 * Documentation: https://www.rascal-mpl.org/docs/GettingStarted/
 * Syntax Doc: https://www.rascal-mpl.org/docs/Rascal/Declarations/SyntaxDefinition/
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
  = // TODO
  | // TODO
  ; 

syntax Null
  = // TODO
  ;

lexical Number
  = // TODO. Hint; think of the pattern for numbers in regular expressions. How do you accept a number in a regex?  
  ;

layout Whitespace = [\ \t\n\r]* !>> [\ \t\n\r];
