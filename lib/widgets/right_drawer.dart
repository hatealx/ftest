import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ftest/widgets/memu_list_tile.dart';


class RightDrawerWidget extends StatelessWidget {
  const RightDrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children:  const [
           DrawerHeader(

            child :Icon(
              Icons.bookmark_border,
              size: 30.0,
              color: Color.fromARGB(66, 8, 241, 78),
            ),
            decoration: BoxDecoration(
              color: Colors.amber,
            ),
           ),
         

        MemuListTileWidget()
        ]
       
      )
    );
  }
}