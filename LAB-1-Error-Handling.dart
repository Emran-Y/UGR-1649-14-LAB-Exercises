// EX1

import 'dart:io';

void main() {
  stdout.write("Enter a number: ");
  String userInput = stdin.readLineSync()!;
  
  try {
    int number = int.parse(userInput);
    print("Integer representation: $number");
  } catch (e) {
    if (e is FormatException) {
      print("Error: Invalid input. Please enter a valid number.");
    } else {
      print("Error: $e");
    }
  }
}

//EX2
// Function to divide two numbers
double divideNumbers(double dividend, double divisor) {
  return dividend / divisor;
}

void main() {
  double a = 10;
  double b = 0;
  
  try {
    double result = divideNumbers(a, b);
    print("Result of division: $result");
  } catch (e) {
    if (e is DivisionByZeroError) {
      print("Error: Division by zero is not allowed.");
    } else {
      print("Error: $e");
    }
  }
}

//EX3

import 'dart:io';

void main() {
  try {
    File file = File("example.txt");
    String contents = file.readAsStringSync();
    print("File contents: $contents");
  } catch (e) {
    if (e is FileSystemException) {
      print("Error: File not found or unable to read file.");
    } else {
      print("Error: $e");
    }
  }
}
