import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final String name = "Athirah";
  final int age = 21;
  final double height = 1.50;
  final bool isStudent = true;

  // List
  final List<String> hobbies = ["Coding", "Reading", "Gaming"];

  // Function
  String greet(String personName) {
    return "Hello, Morning";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flutter Basics")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(greet(name), style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text("Person Info:", style: TextStyle(fontWeight: FontWeight.bold)),
            Text("Name: $name"),
            Text("Age: $age"),
            Text("Height: $height m"),
            Text("Student: ${isStudent ? "Yes" : "No"}"),
            SizedBox(height: 10),
            Text("Hobbies:", style: TextStyle(fontWeight: FontWeight.bold)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: hobbies.map((hobby) => Text("- $hobby")).toList(),
            ),
            SizedBox(height: 10),
            Text(
              age > 18 ? "$name is an adult." : "$name is a minor.",
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }
}
