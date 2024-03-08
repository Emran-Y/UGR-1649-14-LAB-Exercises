// Exercise 1: Design a Person class with properties like name, age, and address.
class Person {
  String name;
  int age;
  String address;

  // Constructor
  Person(this.name, this.age, this.address);
}

void main() {
  // Create objects of the Person class
  Person person1 = Person("Abebe", 25, "5 kilo");
  Person person2 = Person("Selam", 30, "4 kilo");

  // Access and modify attributes
  print("Before modification:");
  print("Name: ${person1.name}, Age: ${person1.age}, Address: ${person1.address}");
  person1.age = 26;
  print("After modification:");
  print("Name: ${person1.name}, Age: ${person1.age}, Address: ${person1.address}");
}


// Exercise 2: Define a Student class that inherits from Person and adds properties like roll number and marks.
class Student extends Person {
  int rollNumber;
  List<int> marks;

  // Constructor
  Student(String name, int age, String address, this.rollNumber, this.marks)
      : super(name, age, address);

  // Method to calculate total marks
  int calculateTotalMarks() {
    int total = 0;
    for (int mark in marks) {
      total += mark;
    }
    return total;
  }

  // Method to calculate average marks
  double calculateAverageMarks() {
    if (marks.isEmpty) {
      return 0;
    }
    int total = calculateTotalMarks();
    return total / marks.length;
  }
}

void main() {
  // Create student objects
  Student student1 = Student("Abebe", 25, "5 kilo", 101, [80, 85, 90]);
  Student student2 = Student("Selam", 30, "4 kilo", 102, [75, 85, 95]);

  // Access attributes
  print("Student 1:");
  print("Name: ${student1.name}, Age: ${student1.age}, Address: ${student1.address}, Roll Number: ${student1.rollNumber}");
  print("Total Marks: ${student1.calculateTotalMarks()}, Average Marks: ${student1.calculateAverageMarks()}");

  print("\nStudent 2:");
  print("Name: ${student2.name}, Age: ${student2.age}, Address: ${student2.address}, Roll Number: ${student2.rollNumber}");
  print("Total Marks: ${student2.calculateTotalMarks()}, Average Marks: ${student2.calculateAverageMarks()}");
}

// Exercise 1: Implement a Rectangle class with constructor arguments for width and height. Create methods to calculate area and perimeter.
class Rectangle {
  double width;
  double height;

  // Constructor
  Rectangle(this.width, this.height);

  // Method to calculate area
  double calculateArea() {
    return width * height;
  }

  // Method to calculate perimeter
  double calculatePerimeter() {
    return 2 * (width + height);
  }
}


// Exercise 2: Design a Product class with properties like name, price, and quantity. Implement a method to calculate the total cost of a product (price * quantity).
class Product {
  String name;
  double price;
  int quantity;

  // Constructor
  Product(this.name, this.price, this.quantity);

  // Method to calculate total cost
  double calculateTotalCost() {
    return price * quantity;
  }
}

// Exercise 3: Define a Shape abstract class with an abstract method calculateArea(). Create subclasses like Circle and Square that inherit from Shape and implement the calculateArea() method specific to their shapes
abstract class Shape {
  double calculateArea();
}

class Circle extends Shape {
  double radius;

  // Constructor
  Circle(this.radius);

  // Override calculateArea method
  @override
  double calculateArea() {
    return 3.14 * radius * radius;
  }
}

class Square extends Shape {
  double side;

  // Constructor
  Square(this.side);

  // Override calculateArea method
  @override
  double calculateArea() {
    return side * side;
  }
}


