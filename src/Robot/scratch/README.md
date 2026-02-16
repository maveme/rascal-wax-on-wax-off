# Small-Robot DSL: From Scratch Challenge

Welcome to the **Small-Robot DSL Challenge**! 

In this exercise, you will implement a complete Domain-Specific Language (DSL) for controlling a virtual robot. Unlike the guided exercises, you are given only the bare minimum skeleton code. It is up to you to define the grammar, the parser, and the interpreter significantly on your own.

## The Language

The "Small-Robot" language consists of a sequence of commands that move a robot on a 2D grid. The robot has a position `(x, y)` and a direction (`UP`, `DOWN`, `LEFT`, `RIGHT`).

### Example Program
```
forward 10; 
right; 
forward 5;
repeat 4 { 
  forward 1; 
  left; 
} 
beep
```

### Commands to Implement

1.  **Move**: `forward <n>` and `backward <n>`
    *   Moves the robot `n` steps in the current direction.
2.  **Turn**: `left` and `right`
    *   Rotates the robot 90 degrees counter-clockwise or clockwise.
3.  **Action**: `beep`
    *   Prints a sound/message.
4.  **Loop**: `repeat <n> { ... }`
    *   Executes the block of commands `n` times.

## Your Tasks

You need to complete the three files in this folder:

### 1. Grammar (`Syntax.rsc`)
Define the syntax rules for the language.
*   **`Program`**: A list of `Command`s separated by semicolons `;`.
*   **`Command`**: Define productions for all the commands listed above.
*   **`Integer`**: A lexical rule for positive integers.
*   **`Whitespace`**: (Already provided) layout to skip spaces.

### 2. Parser (`Parser.rsc`)
Implement the `parseProgram` function.
*   It must take a `str input` and return a `Program` parse tree.
*   Use the standard `parse(#Type, input)` function from Rascal.

### 3. Interpreter (`Interpreter.rsc`)
Implement the execution logic.
*   **`State`**: The robot state is defined as `tuple[int x, int y, str direction]`.
*   **`execute(Program p)`**: The main entry point. Initialize the state (e.g., `<0, 0, "UP">`) and iterate through the commands.
*   **`step(Command c, State s)`**: The core logic. It takes a command and the current state, and returns the *new* state. You must handle the logic for movement (updating x/y based on direction), rotation (updating direction), and loops (recursive execution).

## Testing

To test your implementation, you can create a new test module or simply run specific commands in the console:

```rascal
import Robot::scratch::Parser;
import Robot::scratch::Interpreter;

p = parseProgram("forward 10; right;");
execute(p);
```

Good luck!
