module Series1::III_Factorial

import IO;

/*
 * Functions & Pattern Matching
 *
 * Rascal functions can be defined using multiple cases with pattern matching.
 * This is often used for recursive functions.
 *
 * Example:
 * int fib(0) = 0;
 * int fib(1) = 1;
 * default int fib(int n) = fib(n-1) + fib(n-2);
 */

/*
 * Task: Factorial
 *
 * Implement the factorial function.
 * Use pattern matching for the base case (0!) and the `default` case for the recursion.
 */

// Base case: factorial of 0 is 1
int fact(0) = 1;

// Recursive step: n * fact(n-1)
default int fact(int n) {
 return -1; // Fill in here
}

/*
 * Try this:
 * - Calculate `fact(5)`.
 * - Calculate `fact(10)`.
 */
