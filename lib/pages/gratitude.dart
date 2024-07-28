import 'package:flutter/material.dart';

class Gratitude extends StatefulWidget {
  final int radioGroupValue;
  const Gratitude({super.key, required this.radioGroupValue});

  @override
  State<Gratitude> createState() => _GratitudeState();
}

class _GratitudeState extends State<Gratitude> {
  late List<String> _GratitudeList  = [];
  late String _selectedGratitude;
  late int _radioGroupValue;

  void _radioOnchanged(int index){
    setState(() {
      _radioGroupValue = index;
      _selectedGratitude =_GratitudeList[index];
      print("selectedRadioValue $_selectedGratitude");
    });
  }

  @override
void initState(){
  super.initState();
  _GratitudeList..add("Family")..add("Freinds")..add("Coffee");
  _radioGroupValue = widget.radioGroupValue;
  
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gratitude'),
        actions: [
          IconButton(
            onPressed: () => Navigator.pop(context, _selectedGratitude),
           icon: Icon(Icons.check))
        ],
      ),
    body: SafeArea(child: Padding(
      padding:EdgeInsets.all(16), 
      child: Row(
        children: [
          Radio(value: 0, groupValue: _radioGroupValue, 
          onChanged:(index) => _radioOnchanged(index!),
          ),
          Text("Family"),
          Radio(value: 1, groupValue: _radioGroupValue, 
          onChanged:(index) => _radioOnchanged(index!),
          ),
          Text("Friends"),
          Radio(value: 2, groupValue: _radioGroupValue, 
          onChanged:(index) => _radioOnchanged(index!),
          ),
          Text("Coffee")
        ],
      ),
       )
       ),
    );
  }
}