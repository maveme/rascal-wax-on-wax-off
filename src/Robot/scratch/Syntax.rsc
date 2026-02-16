module Robot::scratch::Syntax

/*
 * Small-Robot DSL: From Scratch (Skeleton)
 *
 * In this file, you must define the complete grammar for the Robot language.
 * We have provided the rule names, but you must implement the productions.
 */

// Task 1: Define the Program syntax
// A program consists of a list of Commands (separated by semicolons).
start syntax Program 
  = // TODO: Define the production
  ;

// Task 2: Define the Command syntax
// Commands: forward, backward, left, right, beep, repeat
syntax Command 
  = // TODO: Define the productions
  ;

// Task 3: Define the lexical grammar for Integer (digits)
lexical Integer 
  = // TODO: Define the pattern
  ;

layout Whitespace 
  = [\ \t\n\r]* !>> [\ \t\n\r]
  ;