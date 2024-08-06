import 'package:flutter/material.dart';
import 'package:ftest/widgets/header.dart';
import 'package:ftest/widgets/row_with_card.dart';
import 'package:ftest/widgets/row.dart';




class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView"),
      ),
      body: SafeArea(
      child: ListView.builder(
        itemCount: 20,
        itemBuilder: (BuildContext context, int index){
          if (index == 0){
            return Header();
          }
          else if (index >= 1 && index <= 3){
            return RowWithCardWidget(index: index);
          }
          else{
            return RowWidget(index: index);
          }
        }

      )
    ),
    )

    ;
  }
}