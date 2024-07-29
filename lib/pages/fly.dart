import 'package:flutter/material.dart';
 
 class Fly extends StatelessWidget {
  const Fly({super.key});

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.shortestSide / 2;

    return Scaffold(
      appBar: AppBar(
        title: Text("FLY"),
      ),
      body: SafeArea(
        child: Hero(
          tag: "format_paint",
           child: Container(
            alignment: Alignment.bottomCenter,
            child: Icon(
              Icons.format_paint,
              color: Colors.lightBlue,
              size: _width,
            ),
           )
        )
      ),
    );
  }
}