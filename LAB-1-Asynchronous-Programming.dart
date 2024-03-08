// Ex1
import 'dart:async';
import 'dart:math';


Future<String> fetchQuote() async {

  await Future.delayed(Duration(seconds: 2));

  List<String> quotes = [
    "A friend is one soul abiding in two bodies. — Aristotle.",
    "Life is what happens when you're busy making other plans. – John Lennon",
    "Friendship is a sheltering tree; Samuel — Taylor Coleridge"
  ];
  return quotes[Random().nextInt(quotes.length)];
}


// EX2

import 'dart:io';
import 'package:http/http.dart' as http;

// Asynchronous function to download a file from a URL
Future<void> downloadFile(String url, String savePath) async {
  var response = await http.get(Uri.parse(url));
  File(savePath).writeAsBytesSync(response.bodyBytes);
  print("File downloaded successfully!");
}

void main() async {
  String url = "https://example.com/example-file.txt";
  String savePath = "example-file.txt";
  await downloadFile(url, savePath);
}


// Asynchronous function simulating loading data from a database
Future<List<String>> loadDataFromDatabase() async {
  // Simulate delay
  await Future.delayed(Duration(seconds: 3));
  
  // Return a list of data
  return ["Data1", "Data2", "Data3"];
}


//EX3 
// Asynchronous function simulating loading data from a database
Future<List<String>> loadDataFromDatabase() async {
  // Simulate delay
  await Future.delayed(Duration(seconds: 3));
  
  // Return a list of data
  return ["Data1", "Data2", "Data3"];
}

