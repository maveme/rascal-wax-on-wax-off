module Series2::III_Transformation

import Series2::I_Grammar;
import String;

/*
 * Part 3: Transformation (Concrete Syntax to Abstract Value)
 *
 * We want to transform the parse tree (Concrete Syntax) into a Rascal value (Map, List, etc.).
 *
 * We use pattern matching on the concrete syntax types.
 *
 * Commands:
 * import Series2::II_Parsing;
 * import Series2::III_Transformation;
 * toValue(parseJSON("{ \"name\": \"Rascal\", \"score\": 100 }").top);
 * toValue(parseFile(|file:///path/to/example.json|));
 */

// Unwrap start[JSON] to JSON (for parseFile which returns start[JSON])
value toValue(start[JSON] s) = toValue(s.top);

// Unwrap JSON to Element
value toValue((JSON)`<Element e>`) = toValue(e);
value toValue((Element)`<Object obj>`) = toValue(obj);
value toValue((Element)`<Array a>`) = toValue(a);
value toValue((Element)`<String s>`) = toValue(s);
value toValue((Element)`<Number n>`) = toInt("<n>"); // Convert concrete Number to int
value toValue((Element)`<Boolean b>`) = ( "<b>" == "true" );
value toValue((Element)`<Null n>`) = "null"(); // Represent null as something specific or just use a placeholder

/* 
 * Task 1: Implement Object transformation
 * Convert a JSON Object to a Rascal "map[str, value]".
 * Hint: Iterate over the members.
 * Works by pattern matching each Member inside the for-loop using (Member) key : val,
 * which destructures the member into its key and value parts. Both are then recursively transformed with toValue.
 */
map[str, value] toValue((Object)`{<{Member ","}* members>}`) {
  map[str, value] result = ();
  for ((Member)`<String key> : <Element val>` <- members) {
    result += (toValue(key) : toValue(val));
  }
  return result;
}

// Task 2: Implement Array transformation
// Convert a JSON Array to a Rascal `list[value]`.
// Use a list comprehension [toValue(e) | Element e <- elements] to map each element in the array through toValue.
list[value] toValue((Array)`[<{Element ","}* elements>]`) {
  return [toValue(e) | Element e <- elements];
}

str toValue(String s) {
  str raw = "<s>";
  return substring(raw, 1, size(raw) - 1); // Remove surrounding quotes
}
