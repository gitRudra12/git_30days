import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_application_3/utilis/Routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeSizeButton = false;

  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeSizeButton = true;
      });

      //delayed wait for the 1 second while app is performing the animation
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);

      setState(() {
        changeSizeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(centerTitle: true, title: Text("Login_page")),
      body: Center(
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Image.asset("Assets/images/page_image.png", fit: BoxFit.cover),
                Text(
                  "Welcome $name",
                  style: TextStyle(fontSize: 24, color: Colors.black87),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      //textformfield1
                      TextFormField(
                        decoration: InputDecoration(
                            hintText: "Enter user name", labelText: "UserName"),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return " please enter username";
                          }
                          return null;
                        },
                        onChanged: (value) {
                          name = value;
                          setState(() {});
                        },
                      ),

                      //textformfield2
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "enter password",
                          labelText: "Password",
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "please enter password";
                          } else if (value.length < 6) {
                            return "password length should be at least 6 ";
                          }
                          return null;
                        },
                        obscureText: true,
                      ),

                      //size box
                      SizedBox(height: 20),

                      /*  //ink well
                      InkWell(
                        onTap: () {
                          setState(() {
                            changeSizeButton = true;
                          });
                        },
                      ), */

                      //animated container
                      Material(
                        borderRadius:
                            BorderRadius.circular(changeSizeButton ? 50 : 8),
                        color: Colors.pink,
                        child: InkWell(
                          onTap: () => moveToHome(context),
                          child: AnimatedContainer(
                            duration: Duration(seconds: 1),
                            height: 50,
                            width: changeSizeButton ? 50 : 150,
                            alignment: Alignment.center,
                            child: changeSizeButton
                                ? Icon(Icons.done, color: Colors.black26)
                                : Text(
                                    "Login",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
