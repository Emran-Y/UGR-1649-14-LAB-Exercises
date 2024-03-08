// Exercise 1: Write a program that checks if a given number is even or odd using an if statement
void checkEvenOrOdd(int number) {
  if (number % 2 == 0) {
    print("$number is even.");
  } else {
    print("$number is odd.");
  }
}
// Exercise 2: Create a for loop to print the first 10 natural numbers
void printFirst10NaturalNumbers() {
  for (int i = 1; i <= 10; i++) {
    print(i);
  }
}

// Exercise 4: Implement a simple calculator using a switch statement to handle addition, subtraction, multiplication, and division
void calculate(int num1, String operator, int num2) {
  switch (operator) {
    case '+':
      print("$num1 + $num2 = ${num1 + num2}");
      break;
    case '-':
      print("$num1 - $num2 = ${num1 - num2}");
      break;
    case '*':
      print("$num1 * $num2 = ${num1 * num2}");
      break;
    case '/':
      if (num2 != 0) {
        print("$num1 / $num2 = ${num1 / num2}");
      } else {
        print("Cannot divide by zero.");
      }
      break;
    default:
      print("Invalid operator.");
  }
}

// Exercise 5: Write a program that takes a grade as input and uses a switch statement to display the corresponding letter grade (A, B, C, etc.)
void getLetterGrade(double grade) {
  if (grade >= 90) {
    print("A");
  } else if (grade >= 80) {
    print("B");
  } else if (grade >= 70) {
    print("C");
  } else if (grade >= 60) {
    print("D");
  } else {
    print("F");
  }
}





