module Series2::III_Transformation

import Series2::I_Grammar;
import String;

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
