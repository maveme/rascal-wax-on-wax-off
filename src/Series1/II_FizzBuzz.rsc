module Series1::II_FizzBuzz

import IO;

/*
 * Control Flow & Lists
 *
 * In this module, we explore basic control flow and list manipulation.
 *
 * Concepts:
 * - `for` loops: `for (int i <- [0..100]) { ... }`
 * - `if` statements: `if (condition) { ... } else { ... }`
 * - List construction: `[1, 2, 3]`
 * - List append: `myList += [newItem];`
 */

/*
 * Task 1: FizzBuzz (Imperative)
 *
 * Print numbers from 1 to 100.
 * - If the number is divisible by 3, print "Fizz".
 * - If the number is divisible by 5, print "Buzz".
 * - If divisible by both, print "FizzBuzz".
 * - Otherwise, print the number.
 */
void fizzBuzz() {
    for (int n <- [1..101]) {
        // Fill in here
    }
}

/*
 * Task 2: FizzBuzz (List-returning)
 *
 * Instead of printing, return a list of strings containing the FizzBuzz results.
 * 
 * Hint: declare a list variable `list[str] result = [];` and append to it.
 */
list[str] fizzBuzzList() {
    list[str] result = [];
    // Fill in here
    return result; 
}

/*
 * Try this:
 * - Run `fizzBuzz()` in the terminal.
 * - accurate your logic by checking `fizzBuzzList()`.
 */
