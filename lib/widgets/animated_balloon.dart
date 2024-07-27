import "package:flutter/material.dart";

class AnimatedBalloonWidget extends StatefulWidget {
  const AnimatedBalloonWidget({super.key});

  @override
  State<AnimatedBalloonWidget> createState() => _AnimatedBalloonWidgetState();
}

class _AnimatedBalloonWidgetState extends State<AnimatedBalloonWidget> with TickerProviderStateMixin {
  late AnimationController _controllerFloatUp;
  late AnimationController _controllerGrowSize;
  late Animation _animationFloatUp;
  late Animation _animationGrowSize;

  @override
  void initState() {
    super.initState();
    _controllerFloatUp = AnimationController(duration: const Duration(seconds: 4), vsync: this);
    _controllerGrowSize = AnimationController(duration: const Duration(seconds: 2), vsync: this);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      double _balloonHeight = MediaQuery.of(context).size.height / 2;
      double _balloonWidth = MediaQuery.of(context).size.height / 3;
      double _balloonBottomLocation = MediaQuery.of(context).size.height / 3 - _balloonHeight;

      _animationFloatUp = Tween<double>(begin: _balloonBottomLocation, end: 0).animate(CurvedAnimation(parent: _controllerFloatUp, curve: Curves.fastOutSlowIn));
      _animationGrowSize = Tween<double>(begin: 50.0, end: _balloonWidth).animate(CurvedAnimation(parent: _controllerGrowSize, curve: Curves.fastOutSlowIn));
      _controllerFloatUp.forward();
      _controllerGrowSize.forward();
    });
  }

  @override
  void dispose() {
    _controllerFloatUp.dispose();
    _controllerGrowSize.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
     double _balloonHeight = MediaQuery.of(context).size.height / 2;
    double _balloonWidth = MediaQuery.of(context).size.height / 3;
    double _balloonBottomLocation = MediaQuery.of(context).size.height / 3 - _balloonHeight;

    return AnimatedBuilder(
      animation: _controllerFloatUp,
      builder: (context, child) {
        return Container(
          child: child,
          margin: EdgeInsets.only(top: _animationFloatUp.value),
          width: _animationGrowSize.value,

        );
        
      },
      child:GestureDetector(
        onTap: () {
          if (_controllerFloatUp.isCompleted) {
            _controllerFloatUp.reverse();
            _controllerGrowSize.reverse();
             }
          else{
            _controllerFloatUp.forward();
            _controllerFloatUp.forward();
          }
        },
        child: Image.asset("assets/images/balloon.jpg", height: _balloonHeight, width: _balloonWidth,),

      )
  
      
    );
  }
}
