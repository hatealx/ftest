import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ftest/pages/birthdays.dart';
import 'package:ftest/pages/gratitude.dart';
import 'package:ftest/pages/reminders.dart';

class MemuListTileWidget extends StatefulWidget {
  const MemuListTileWidget({super.key});

  @override
  State<MemuListTileWidget> createState() => _MemuListTileWidgetState();
}

class _MemuListTileWidgetState extends State<MemuListTileWidget> {
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        ListTile(
          leading: Icon(Icons.cake),
          title: Text("Birthdays"),

          onTap: () {
            Navigator.pop(context);
            Navigator.push(context, 
            MaterialPageRoute(builder: (context) => Birthdays())
            );
          },

        ),
        ListTile(
          leading: Icon(Icons.sentiment_satisfied),
          title: Text("Gratitude"),

          onTap: () {
            Navigator.pop(context);
            Navigator.push(context, 
            MaterialPageRoute(builder: (context) => Gratitude())
            );
          },

        ),

       
       ListTile(
          leading: Icon(Icons.alarm),
          title: Text("Reminders"),

          onTap: () {
            Navigator.pop(context);
            Navigator.push(context, 
            MaterialPageRoute(builder: (context) => Reminders())
            );
          },

        ),
        Divider(color: Color.fromARGB(255, 59, 53, 227)),

        ListTile(
          leading: Icon(Icons.settings),
          title: Text("Settings"),

          onTap: () {
            Navigator.pop(context);
          },

        ),
      ],

    );
  }
}
