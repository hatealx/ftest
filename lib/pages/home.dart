import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Orientation _orientation = MediaQuery.of(context).orientation;

    return Scaffold(
        appBar: AppBar(
          title: Text('Home'),
          backgroundColor: const Color.fromARGB(255, 0, 136, 255),
        ),
        body: const SafeArea(
            child: SingleChildScrollView(
          child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: [
                  OrientationLayoutIconsWidgets(), 
                  Divider() , 
                  OrientationLayoutWidget(),
                  Divider(),
                  GridViewWidget(),
                  Divider(),
                  OrientationBuilderWidget(),
                   ],
              )),
        )));
  }
}


class OrientationLayoutIconsWidgets extends StatelessWidget {
  const OrientationLayoutIconsWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    Orientation _orientation = MediaQuery.of(context).orientation;
    return _orientation == Orientation.portrait
        ? const Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Icon(Icons.sentiment_dissatisfied),
          ])
        : const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.sentiment_dissatisfied),
              Icon(Icons.sentiment_satisfied),
            ],
          );
  }
}


class OrientationLayoutWidget extends StatelessWidget {
  const OrientationLayoutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Orientation _orientation = MediaQuery.of(context).orientation;
    return _orientation == Orientation.portrait ?
    Container(
      alignment: Alignment.center,
        color: Colors.grey,
        child: Text("Portrait",style: TextStyle(fontSize: 30),),
        height: 100,
        width: 100,
    ):
    Container(
      alignment: Alignment.center,
        color: const Color.fromARGB(255, 226, 51, 51),
        child: Text("Portrait",style: TextStyle(fontSize: 30),),
        height: 120,
        width: 100,
      );
      
  }
}

class GridViewWidget extends StatelessWidget {
  const GridViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Orientation _orientation = MediaQuery.of(context).orientation;
     return GridView.count(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            crossAxisCount: _orientation == Orientation.portrait ? 2 : 4,
            childAspectRatio: 5.0,
            children: List.generate(8, (int index){
              return Text("Grid $index", textAlign: TextAlign.center,);
            }
            )
          );
        
  }
}


class OrientationBuilderWidget extends StatelessWidget {
  const OrientationBuilderWidget({super.key});

  @override
  Widget build(BuildContext context) {
   return OrientationBuilder(builder: (BuildContext context, Orientation orientation) {
     return orientation == Orientation.portrait ?
     Container(
      alignment: Alignment.center,
        color: Colors.grey,
        child: Text("Portrait",style: TextStyle(fontSize: 30),),
        height: 100,
        width: 100,
    )
     : Container(
      alignment: Alignment.center,
        color: const Color.fromARGB(255, 226, 51, 51),
        child: Text("Portrait",style: TextStyle(fontSize: 30),),
        height: 120,
        width: 100,
      );


   });
  }
}