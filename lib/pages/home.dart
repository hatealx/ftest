import 'package:flutter/material.dart';
import 'package:ftest/pages/birthdays.dart';
import 'package:ftest/pages/gratitude.dart';
import 'package:ftest/pages/reminders.dart';



class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(_tabChanged);

  }
  @override
  void dispose()
  {
      super.dispose();
      _tabController.dispose();

  }
  void _tabChanged(){
    if (_tabController.indexIsChanging){
      print("tabChanged: ${_tabController.index}");
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BottomAppbar"),
      ),
      body:SafeArea(
        child:TabBarView(
          controller: _tabController,
        children: [
          Birthdays(),
          Gratitude(),
          Reminders(),
        ]
        )
      ),
     
      bottomNavigationBar: SafeArea(
       
        child: TabBar(
          controller: _tabController,
          labelColor: Colors.black,
          unselectedLabelColor: Colors.black87,
          tabs: const [
            Tab(
              icon: Icon(Icons.cake),
              text: "Birthdays",
            ),
            Tab(
              icon: Icon(Icons.sentiment_satisfied),
              text: "Gratitude",
            ),
            Tab(
              icon: Icon(Icons.access_alarm),
              text: "Reminders",
            )
          ],
          )
        )

      
    );
  
}
}