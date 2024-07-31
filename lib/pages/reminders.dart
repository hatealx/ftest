import 'package:flutter/material.dart';

class Reminders extends StatelessWidget {
  const Reminders({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Reminders'),),
      body: Center(
        child: Icon(
          Icons.access_alarm,
          size: 120.0,
        ),
      ),
    );;
  }
}