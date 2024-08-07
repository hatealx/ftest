import 'package:flutter/material.dart';
import 'package:ftest/widgets/grid_icons.dart';

class GridViewBuilderWidget extends StatelessWidget {
  const GridViewBuilderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List <IconData> _iconList = GridIcons().getIconList();

    return GridView.builder(
      itemCount: 20,
      padding: EdgeInsets.all(8.0),
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 150.0), 
      itemBuilder: (BuildContext context, int index){
        print("building element $index");
        return Card(
          color: Color.fromARGB(255, 72, 238, 108),
          margin: EdgeInsets.all(8.0),
          child:InkWell(
            child:Column(
            children: [
              Icon(
                _iconList[index],
                size: 50.0,
                color: Colors.white,
              ),
              Divider(),
              Text(
                "Index $index",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16.0),
              )
            ],

          ),
          )
        );
      }
      
      
      );
  }
}