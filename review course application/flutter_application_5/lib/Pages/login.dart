import 'package:flutter/material.dart';

class Login_page extends StatelessWidget {
  const Login_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Text(
          "login",
          style: TextStyle(fontSize: 40, color: Colors.blue),
        ),
      ),
    );
  }
}
