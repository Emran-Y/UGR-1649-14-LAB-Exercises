import 'dart:io';

// Exercise 1

void main() {
  // Variables to store personal information
  String name = "emran";
  int age = 20;
  String favoriteColor = "red";

  // Print personal information using string interpolation
  print("My name is $name, I am $age years old, and my favorite color is $favoriteColor.");
}
// Exercise 2

void main() {
  // Define constant variable for the speed of light
  const int SPEED_OF_LIGHT = 299792458; // meters per second

  // User input for distance
  print("Enter the distance (in meters): ");
  double distance = double.parse(stdin.readLineSync()!);

  // Calculate time taken for light to travel the distance
  double timeTaken = distance / SPEED_OF_LIGHT;

  // Print the time taken
  print("Time taken for light to travel $distance meters is $timeTaken seconds.");
}
