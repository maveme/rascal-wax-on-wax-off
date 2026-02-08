module Series1::IV_Comprehensions

import IO;

/*
 * Comprehensions
 *
 * Comprehensions provide a concise way to construct lists, sets, and maps.
 * They are often more readable than loops.
 *
 * Sytax:
 * - List: `[ expression | generators, conditions ]`
 * - Set:  `{ expression | generators, conditions }`
 * - Map:  `( key : value | generators, conditions )`
 *
 * Examples:
 * - Squares: `[ x * x | int x <- [0..10] ]`
 * - Evens:   `[ x | int x <- [0..10], x % 2 == 0 ]`
 */

/*
 * Task 1: List Comprehension
 *
 * Construct a list of squares of integers from 0 to 9.
 */
list[int] squares() {
  return []; // Fill in here
}

/*
 * Task 2: Set Comprehension
 *
 * Construct a set of even numbers from a given list of integers.
 */
set[int] evens(list[int] nums) {
  return {}; // Fill in here
}

/*
 * Task 3: Map Comprehension
 *
 * Create a map where the key is the integer and the value is its square,
 * for numbers from 1 to 5.
 * Expected: (1:1, 2:4, 3:9, 4:16, 5:25)
 */
map[int, int] squareMap() {
  return (); // Fill in here
}
