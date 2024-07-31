import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ftest/widgets/memu_list_tile.dart';


class LeftDrawerWidget extends StatelessWidget {
  const LeftDrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.all(18.0),
        children: const [
           UserAccountsDrawerHeader(

          currentAccountPicture: Icon(
            Icons.face,
            size: 30.0,
            color: Color.fromARGB(66, 251, 249, 249),
          ), 
          accountName: Text("Hateor ATSOU"), 
          accountEmail: Text("aatsou12@gmail.com"),
          otherAccountsPictures: <Widget>[
            Icon(
              Icons.bookmark_border,
              size: 30.0,
              color: Color.fromARGB(66, 8, 241, 78),
            ),
          ],
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/home_top_mountain.jpg'),
              fit: BoxFit.cover
            )
          ),

        ),

        MemuListTileWidget()
        ]
       
      )
    );
  }
}