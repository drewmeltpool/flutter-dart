import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class Student {
  String firstName;
  String lastName;
  int birthYear;
  String group;
  int get age => (DateTime.now().year - birthYear);
  set age(int val) => birthYear = (DateTime.now().year - val);

  Student(String firstName, String lastName, int birthYear, String group) {
    this.firstName = firstName;
    this.lastName = lastName;
    this.birthYear = birthYear;
    this.group = group;
  }

  String printInfo() => 'Student: $firstName $lastName $age age, group: $group';
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Student student = Student('Andrii', 'Valyhin', 2000, 'IP-84');
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter and Dart Foundation'),
        ),
        body: Center(
          child: Text(student.printInfo()),
        ),
      ),
    );
  }
}
