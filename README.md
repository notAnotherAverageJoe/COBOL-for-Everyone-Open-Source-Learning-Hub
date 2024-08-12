# COBOL Learning Project

Welcome to the COBOL Learning Project! This repository is designed to be a resource for anyone interested in learning COBOL, one of the oldest and most enduring programming languages. Whether you're a beginner looking to get started or an experienced programmer wanting to explore COBOL, this project provides hands-on exercises, examples, and resources to help you learn the language.

## Table of Contents

- [Introduction](#introduction)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
- [Project Structure](#project-structure)
- [Usage](#usage)
- [Examples](#examples)
- [Contributing](#contributing)
- [Resources](#resources)
- [License](#license)

## Introduction

COBOL (Common Business-Oriented Language) is a high-level programming language that has been in use since 1959. It is primarily used in business, finance, and administrative systems for companies and governments. Despite its age, COBOL is still widely used today, and learning it can open up opportunities in maintaining and developing critical systems.

This project provides a series of exercises and example programs that demonstrate the fundamentals of COBOL. Each example is well-documented and designed to teach specific concepts in the language.

## Getting Started

### Prerequisites

Before you begin, you'll need to have the following installed on your system:

- **GnuCOBOL**: An open-source COBOL compiler.
- A text editor or IDE that supports COBOL syntax (e.g., VS Code with COBOL extensions).
- Basic understanding of programming concepts.

### Installation

1. **Clone the Repository**:

   ```bash
   git clone
   cd cobol-learning-project
   ```

2. **Install GnuCOBOL**:
   - On **Ubuntu**:
     ```bash
     sudo apt-get update
     sudo apt-get install open-cobol
     ```
   - On **Windows**:
     Download and install GnuCOBOL from [GnuCOBOL official site](https://gnucobol.sourceforge.io/).

## Project Structure

The project is organized into the following directories:

- **/basics**: Simple COBOL programs that cover basic syntax and concepts.
- **/intermediate**: More advanced examples including file handling, string manipulation, and arithmetic operations.
- **/projects**: Real-world applications and larger projects.
- **/tests**: Test cases to help you practice writing and debugging COBOL code.
- **/docs**: Documentation and learning resources.

## Usage

1. Navigate to a directory of your choice:

   ```bash
   cd basics
   ```

2. Compile the COBOL program:

   ```bash
   cobc -x hello-world.cob
   ```

3. Run the compiled program:
   ```bash
   ./hello-world
   ```

## Examples

Here are some examples of what you'll find in this project:

- **Hello World**: A simple program that prints "Hello, World!" to the console.
- **Arithmetic Operations**: A program that demonstrates basic arithmetic operations in COBOL.
- **File Handling**: Examples of reading from and writing to files in COBOL.
- **String Manipulation**: How to work with strings in COBOL, including concatenation and searching.

Each example is accompanied by comments explaining the code, so you can easily follow along and understand how COBOL works.

## Contributing

Contributions are welcome! If you have any examples, exercises, or improvements you'd like to share, feel free to fork the repository and submit a pull request. Please ensure your contributions are well-documented and follow the coding style of the project.

## Resources

- [GnuCOBOL Official Site](https://gnucobol.sourceforge.io/)
- [COBOL Programming Guide](https://www.tutorialspoint.com/cobol/index.htm)
- [COBOL on VS Code](https://marketplace.visualstudio.com/items?itemName=bitlang.cobol)

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

# Data Representation Characters:

X: Any character (e.g., PIC X(10) for a 10-character string, up to 30).
9: Numeric character (e.g., PIC 9(5) for a 5-digit number).
A: Alphabetic character (e.g., PIC A(3) for a 3-letter string).
Arithmetic Positioning Characters:
S: Sign (e.g., PIC S9(4) for a signed 4-digit number).
V: Implied decimal point (e.g., PIC 9V99 for a number with two decimal places).
P: Scaling position (e.g., PIC 99PPP for a number scaled by 1,000).

# Numeric Editing Characters:

-: Minus sign (e.g., PIC -9(3) for a signed 3-digit number).
+: Plus sign (e.g., PIC +9(3) for a signed 3-digit number with explicit sign).
.: Actual decimal point (e.g., PIC 9.99 for a number with a visible decimal point).
Z: Zero suppression (e.g., PIC ZZZ9 to suppress leading zeros).
,: Comma (e.g., PIC 9,999 for a number with a comma separator).
$: Dollar sign (e.g., PIC $9,999 for currency formatting).
