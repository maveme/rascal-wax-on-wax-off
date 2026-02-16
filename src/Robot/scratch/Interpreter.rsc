module Robot::scratch::Interpreter

import Robot::scratch::Syntax;

/*
 * Small-Robot DSL: Interpreter (Skeleton)
 */

// Task 1: Define the State
// The state should track the robot's position (x, y) and direction.
alias State = tuple[int x, int y, str direction]; 

// Task 2: Implement the execute function
void execute(Program p) {
  // TODO: Initialize state
  // TODO: Iterate over commands and update state
  // TODO: Print result
}

// Task 3: Implement step functions for each command
// We provide the signature for a generic step, but you should probably 
// use pattern matching on specific commands.

State step(Command c, State s) {
  // TODO: Implement logic for each command type
  return s;
}
