import 'package:flutter/material.dart';
import 'package:ftest/widgets/gridview_builder.dart';




class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView"),
      ),
      body: const GridViewBuilderWidget(),
    )

    ;
  }
}