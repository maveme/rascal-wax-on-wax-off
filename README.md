# Rascal: Wax On, Wax Off

Welcome to the Rascal Language Engineering Seminar! This repository contains a set of tutorials designed to help you build your own Domain-Specific Language (DSL) using the Rascal language workbench.

## Prerequisites

- [Rascal MPL](https://www.rascal-mpl.org/) installed in VS Code or Eclipse.
- A terminal open in the root of this project.

## Getting Started

1.  Open the `src` folder in your IDE.
2.  Open a Rascal terminal:
    - **VS Code**: Command Palette -> "Rascal: Import in new Rascal Terminal"
    - **Eclipse**: Right-click a file -> "Run As" -> "Rascal Application"

## Tutorial Overview

The tutorial is divided into two series:

### [Series 1: Rascal Basics](src/Series1)

This series introduces the fundamental concepts of Rascal. Each file contains exercises marked with comments like `// Fill in here`.

Go through the files in order:

1.  **[I_HelloWorld.rsc](src/Series1/I_HelloWorld.rsc)**: Your first Rascal program. Learn how to import modules and print output.
2.  **[II_FizzBuzz.rsc](src/Series1/II_FizzBuzz.rsc)**: Control flow (`if`, `for`) and list manipulation.
3.  **[III_Factorial.rsc](src/Series1/III_Factorial.rsc)**: Writing functions and using basic recursion.
4.  **[IV_Comprehensions.rsc](src/Series1/IV_Comprehensions.rsc)**: A powerful way to create lists, sets, and maps.
5.  **[V_PatternMatching.rsc](src/Series1/V_PatternMatching.rsc)**: One of Rascal's strongest features. Learn to match data structures.
6.  **[VI_Trees.rsc](src/Series1/VI_Trees.rsc)**: Working with Algebraic Data Types (ADTs) and the `visit` statement.

**To run a module:**
In the terminal, type:
```rascal
import Series1::I_HelloWorld;
helloWorld();
```

### [Series 2: Grammars & Processing](src/Series2)

In this series, you will define a syntax for **JSON** and write a simple interpreter for it.

Go through the files in order:

1.  **[I_Grammar.rsc](src/Series2/I_Grammar.rsc)**: Define the syntax rules for JSON.
2.  **[II_Parsing.rsc](src/Series2/II_Parsing.rsc)**: Learn how to parse strings.
3.  **[III_Transformation.rsc](src/Series2/III_Transformation.rsc)**: Transform the Concrete Syntax Tree (CST) into native Rascal values.

**To run the parser:**
```rascal
import Series2::II_Parsing;
testParse();
```

## Need Help?

- Check the [Rascal Documentation](https://www.rascal-mpl.org/docs/).
- Ask questions in the course's Discord server.

