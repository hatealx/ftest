import "package:flutter/material.dart";


class AnimatedCrossFadeWidget extends StatefulWidget {
  const AnimatedCrossFadeWidget({super.key});

  @override
  State<AnimatedCrossFadeWidget> createState() => _AnimatedCrossFadeWidgetState();
}

class _AnimatedCrossFadeWidgetState extends State<AnimatedCrossFadeWidget> {
  bool _CrossFadeStateShowFirst = true;
  void _crossFade(){
    setState(() {
      _CrossFadeStateShowFirst = _CrossFadeStateShowFirst ? false : true;

      
    });
  }
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          alignment: AlignmentDirectional.center,
          children: [
            AnimatedCrossFade(
              firstChild: Container(
                color: Colors.amber,
                height: 100,
                width: 100,
              
            ), 
            secondChild:Container(
                color: const Color.fromARGB(255, 7, 255, 152),
                height: 200,
                width: 200,
              
            ), 
             crossFadeState: _CrossFadeStateShowFirst ? CrossFadeState.showFirst : CrossFadeState.showSecond, 
             duration: Duration(milliseconds: 500),
             sizeCurve: Curves.bounceOut,

             ),
             Positioned.fill(
              child: TextButton(
                onPressed: _crossFade, 
                child: Text("Tap \nTO Fade \nColor and color")
                )
              )
          ],

        )
      ],
    );
  }
}