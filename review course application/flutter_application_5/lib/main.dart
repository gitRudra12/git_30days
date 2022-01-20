import 'package:flutter/material.dart';
import 'package:flutter_application_5/Pages/home_page.dart';
import 'package:flutter_application_5/Pages/login.dart';

void main() {
  runApp(ReviewApp());
}

class ReviewApp extends StatelessWidget {
  const ReviewApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      darkTheme: ThemeData(brightness: Brightness.dark),
      theme: ThemeData(primarySwatch: Colors.lightBlue),
      initialRoute: ("/login"),
      routes: {
        "/": (context) => Home_page(),
        "/login": (context) => Login_page(),
      },
    );
  }
}
