import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  final int index;

  const RowWidget({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        Icons.directions_car,
        size: 48.0,
        color: Colors.lightBlue,
      ),
      title: Text("Airplane $index"),
      subtitle: Text("Very Cool"),
      trailing: Text(
        '${index * 7}%',
        style: TextStyle(color: Colors.lightBlue),
      ),
      onTap: () => print("Tapped on Row $index"),
    );
  }
}
