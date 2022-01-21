import 'dart:ui';

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(centerTitle: true, title: Text("Login_page")),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset("Assets/images/page_image.png", fit: BoxFit.cover),
              Text(
                "Welcome",
                style: TextStyle(fontSize: 40, color: Colors.black87),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    //textformfield1
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Enter user name", labelText: "UserName"),
                    ),

                    //textformfield2
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "enter password",
                        labelText: "Password",
                      ),
                      obscureText: true,
                    ),

                    //elevatedLoginButton
                    ElevatedButton(
                      child: Text("login"),
                      onPressed: () {
                        print("Login button pressed");
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
