import 'package:flutter/material.dart';



class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BottomAppbar"),
      ),
      body:SafeArea(
        child:Container(

        )
        

      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {  
      },
      child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        color: Colors.blueAccent,

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: (){}, 
              icon: const Icon(
                Icons.access_alarm),
                color: Colors.white
              ),
               IconButton(
              onPressed: (){}, 
              icon: const Icon(
                Icons.bookmark_border),
                color: Colors.white
              ),
               IconButton(
              onPressed: (){}, 
              icon: const Icon(
                Icons.flight),
                color: Colors.white
              ),
              Divider()
          ],
        ),
      ),
      
    );
  
}
}