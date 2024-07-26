import 'package:flutter/material.dart';
import 'package:ftest/widgets/animated_container.dart';
import 'package:ftest/widgets/animated_cross_fade.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        ),
        body: SafeArea(
          child: Column(
            children: [
              AnimatedContainerWidget(),
              Divider(),
              AnimatedCrossFadeWidget(),
            ],
          )
          ),
    );
    
}
}


