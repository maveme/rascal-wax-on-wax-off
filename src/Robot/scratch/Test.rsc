module Robot::scratch::Test

import Robot::scratch::Syntax;
import Robot::scratch::Parser;
import Robot::scratch::Interpreter;
import IO;

void runTest() {
  str program = "forward 10; right; backward 5; repeat 2 { beep; forward 2; }; left; beep";
  println("Testing program: <program>");
  
  try {
    Program p = parseProgram(program);
    println("Parse successful!");
    execute(p);
    println("Execution complete!");
  } catch e: {
    println("Test failed: <e>");
  }
}
