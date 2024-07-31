import 'package:flutter/material.dart';

class Gratitude extends StatelessWidget {
  const Gratitude({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Gratitude'),),
      body: Center(
        child: Icon(
          Icons.sentiment_satisfied,
          size: 120.0,
        ),
      ),
    );;
  }
}