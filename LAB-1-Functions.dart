// Exercise 1: Create a function that takes two numbers as arguments and returns their sum.
int sum(int a, int b) {
  return a + b;
}

// Exercise 2: Define a function that checks if a number is prime (divisible only by 1 and itself).
bool isPrime(int number) {
  if (number <= 1) {
    return false;
  }
  for (int i = 2; i <= number / 2; i++) {
    if (number % i == 0) {
      return false;
    }
  }
  return true;
}

// Exercise 3: Implement a function that takes a string as input and returns a new string with all characters reversed.
String reverseString(String input) {
  String reversed = '';
  for (int i = input.length - 1; i >= 0; i--) {
    reversed += input[i];
  }
  return reversed;
}




