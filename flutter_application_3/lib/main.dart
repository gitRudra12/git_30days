// we are importing packages

import 'package:flutter/material.dart';
import 'package:flutter_application_3/pages/Home_page.dart';
import 'package:flutter_application_3/pages/LoginPage.dart';

// we are declaring main method here
void main() {
  runApp(CourseApp());
}

class CourseApp extends StatelessWidget {
  CourseApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //we are defining routes below
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.pink),
      initialRoute: "/login",
      routes: {
        "/": (context) => HomePAge(),
        "/login": (context) => LoginPage(),
      },
    );
  }
}
