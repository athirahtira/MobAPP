import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('Basic OOP in Dart', style: TextStyle(fontWeight: FontWeight.bold))),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue, Colors.purple],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Center(
            child: StudentExample(),
          ),
        ),
      ),
    );
  }
}

// Abstraction
abstract class Person {
  String _name;
  int _age;

  Person(this._name, this._age);

  String get name => _name;
  int get age => _age;

  void speak();

  String introduce() {
    return "Hi, my name is $_name and I am $_age years old.";
  }
}

// Inheritance
class Student extends Person {
  String major;

  Student(String name, int age, this.major) : super(name, age);

  @override
  void speak() {
    print("I am a student studying $major.");
  }

  String study() {
    return "I am a student studying $major.";
  }
}

class StudentExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Student student = Student("Athirah", 20, "Computer Science");

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(student.introduce(), style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold)),
          SizedBox(height: 10),
          Text(student.study(), style: TextStyle(fontSize: 18, color: Colors.white)),
        ],
      ),
    );
  }
}