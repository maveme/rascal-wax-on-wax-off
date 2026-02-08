module Series1::VI_Trees

import IO;

/*
 * Algebraic Data Types (ADTs) & Visiting
 *
 * Rascal allows defining data types similar to Haskell or ML.
 *
 * Example:
 * data Boolean = t() | f();
 *
 * Tree Example:
 * data Tree = leaf(int n) | node(Tree left, Tree right);
 */

data ColoredTree
  = leaf(int n)
  | red(ColoredTree left, ColoredTree right)
  | black(ColoredTree left, ColoredTree right);

ColoredTree exampleTree()
  = red(black(leaf(1), red(leaf(2), leaf(3))),
        black(leaf(4), leaf(5)));

/*
 * Task 1: Sum of Leaves
 *
 * Write a recursive function to sum the values of all leaves.
 * Use `visit` or pattern matching switch.
 *
 * `visit` allows you to traverse the tree without defining a case for every node type.
 *
 * int sumLeaves(ColoredTree t) {
 *   int count = 0;
 *   visit (t) {
 *     case leaf(n): count += n;
 *   }
 *   return count;
 * }
 */
int sumLeaves(ColoredTree t) {
  return 0; // Fill in here
}

/*
 * Task 2: Transformation
 *
 * Increment the value of all leaves by 1.
 * Use `visit` with the `=>` operator for replacement.
 *
 * visit (t) {
 *   case leaf(n) => leaf(n+1)
 * }
 */
ColoredTree inc1(ColoredTree t) {
  return t; // Fill in here
}
