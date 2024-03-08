//EX1
void main() {
  List<String> hobbies = ["Reading", "Painting", "Cooking", "Playing Football"];

  // Add a hobby
  hobbies.add("Gardening");
  print("Added hobby: $hobbies");

  // Remove a hobby
  hobbies.remove("Cooking");
  print("Removed hobby: $hobbies");

  // Sort hobbies
  hobbies.sort();
  print("Sorted hobbies: $hobbies");

  // Check if hobbies list is empty
  if (hobbies.isEmpty) {
    print("Hobbies list is empty.");
  } else {
    print("Hobbies list is not empty.");
  }
}

//EX  2

import 'dart:math';

void main() {
  List<int> randomNumbers = List.generate(10, (_) => Random().nextInt(10));
  print("Generated list of random numbers: $randomNumbers");

  Set<int> uniqueNumbers = Set.from(randomNumbers);
  print("Unique numbers: $uniqueNumbers");
}

//EX3
void main() {
  Map<String, int> studentMarks = {};

  // Add entries
  studentMarks.putIfAbsent("Abebe", () => 90);
  studentMarks.putIfAbsent("Kebede", () => 85);
  studentMarks.putIfAbsent("Chuchu", () => 95);
  print("Student marks: $studentMarks");

  // Iterate through entries
  studentMarks.forEach((name, marks) {
    print("$name: $marks");
  });

  // Check if an entry exists
  if (studentMarks.containsKey("Abebe")) {
    print("Abebe's marks: ${studentMarks["Abebe"]}");
  } else {
    print("Abebe's marks not found.");
  }
}


//EX 4
class Product {
  String name;
  double price;

  Product(this.name, this.price);
}

void main() {
  List<Product> shoppingCart = [];

  // Add items to cart
  shoppingCart.add(Product("Laptop", 999.99));
  shoppingCart.add(Product("Phone", 599.99));
  shoppingCart.add(Product("Headphones", 99.99));

  // Calculate total price
  double totalPrice = shoppingCart.fold(0, (total, product) => total + product.price);
  print("Total price: \$$totalPrice");

  // Remove an item from cart
  shoppingCart.removeWhere((product) => product.name == "Phone");
  print("Updated shopping cart: $shoppingCart");
}

//EX 5
class Student {
  String name;
  List<int> marks;

  Student(this.name, this.marks);

  double calculateAverageMark() {
    if (marks.isEmpty) {
      return 0;
    }
    int total = marks.reduce((a, b) => a + b);
    return total / marks.length;
  }
}


