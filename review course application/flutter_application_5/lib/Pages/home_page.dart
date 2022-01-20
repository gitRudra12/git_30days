import 'package:flutter/material.dart';

class Home_page extends StatelessWidget {
  const Home_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Best_Of"),
      ),
      body: Center(
        child: Container(
          child: Text("practice bruh practice"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
