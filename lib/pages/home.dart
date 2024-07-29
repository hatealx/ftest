import 'package:flutter/material.dart';

import 'gratitude.dart';
import 'birthdays.dart';
import 'reminders.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;

  List _listPages = [];
  late Widget _currentPage;

  void _changePage(int selectedIndex) {
    setState(() {
      _currentIndex = selectedIndex;
      _currentPage = _listPages[selectedIndex];
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _listPages
      ..add(Birthdays())
      ..add(Gratitude())
      ..add(Reminders());
    _currentPage = Birthdays();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hero Navigation Animation"),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: _currentPage,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.cake), label: "Birthdays"),
          BottomNavigationBarItem(
              icon: Icon(Icons.sentiment_satisfied), label: "Gratitude"),
          BottomNavigationBarItem(
              icon: Icon(Icons.access_alarm), label: "Remnders")
        ],
        onTap: (selectedIndex) => _changePage(selectedIndex),
      ),
    );
  }
}
