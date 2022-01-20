import "package:flutter/material.dart";

class HomePAge extends StatelessWidget {
  const HomePAge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Best_of"),
      ),
      body: Center(
        child: Center(
          child: Container(
            child: Text("This is another app"),
          ),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
