// we are importing packages

import 'package:flutter/material.dart';
import 'package:flutter_application_3/pages/Home_page.dart';
import 'package:flutter_application_3/pages/LoginPage.dart';
import 'package:flutter_application_3/utilis/Routes.dart';
import 'package:google_fonts/google_fonts.dart';

// we are declaring main method here
void main() {
  runApp(CourseApp());
}

class CourseApp extends StatelessWidget {
  CourseApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      /*  This below line is use for the remove banner 
       debugShowCheckedModeBanner: false,  
         
      */
      //we are defining routes below
      themeMode: ThemeMode.light,
      theme: ThemeData(
          primarySwatch: Colors.pink,
          fontFamily: GoogleFonts.lato().fontFamily),
      initialRoute: "/login",
      routes: {
        MyRoutes.homeRoute: (context) => HomePAge(),
        MyRoutes.loginRoute: (context) => LoginPage(),
      },
    );
  }
}
