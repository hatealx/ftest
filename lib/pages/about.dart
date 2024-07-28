import "package:flutter/material.dart";

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About"),

      ),
      body: SafeArea(
        child:Padding(padding: EdgeInsets.all(6.0),
        child: Text("This is About Page",)
        ),
    )
    );
  }
}