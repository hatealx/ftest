import 'package:flutter/material.dart';
import 'package:ftest/widgets/left_drawer.dart';
import 'package:ftest/widgets/right_drawer.dart';


class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {

  
  
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Scaffold(
          appBar: AppBar(title: const Text("BottomAppbar"),),
          drawer: LeftDrawerWidget(),
          endDrawer: RightDrawerWidget(),
          body: SafeArea(
            child: Container(),
            ),
        ),
      )
    );
     
   
}
}