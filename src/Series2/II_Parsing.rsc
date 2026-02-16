module Series2::II_Parsing

import Series2::I_Grammar;
import ParseTree;
import IO;

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
 * Task: Parse something else
 *
 * Create a function `parseFile(loc l)` that reads a file and parses it.
 * Use `readFile(l)` to get the content.
 *
 * Command:
 * parseJSON("{ \"a\": true}");
 */ 
start[JSON] parseJSON(str input) {
  return parse(#start[JSON], input);
}
