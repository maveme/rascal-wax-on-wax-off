module Series1::V_PatternMatching

import IO;

/*
 * Pattern Matching
 *
 * The match operator `:=` tries to match a value against a pattern.
 * It can be used in `if`, `for`, and `switch` statements, as well as in function dispatch.
 *
 * Examples:
 * - `if (/hello/ := "hello world") println("Match!");` (Regular expression match)
 * - `if ([1, *x, 5] := [1, 2, 3, 4, 5]) println(x);` (List match with splice variable)
 */

/*
 * Task 1: String Matching
 *
 * Write a function that checks if a string contains the word "Rascal".
 * Use the `/.../` pattern for regular expressions.
 */
bool containsRascal(str s) {
  return false; // Fill in here: return /Rascal/ := s;
}

/*
 * Task 2: List Matching
 *
 * Write a function that checks if a list starts with 1 and ends with 5.
 * Use the `*` operator for matching the middle part.
 */
bool start1End5(list[int] l) {
  return false; // Fill in here
}

/*
 * Task 3: Set Matching
 *
 * Rascal supports matching on sets. Since sets are unordered, matching is non-deterministic.
 * Construct a loop that prints all pairs of numbers from a set that sum up to 10.
 *
 * Hint: `for ({x, y, *rest} := mySet, x + y == 10) ...`
 */
void pairsSum10(set[int] nums) {
  // Fill in here
}
