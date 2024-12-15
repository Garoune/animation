import 'package:flutter/material.dart';
 class SwitchAnimation extends StatefulWidget {
  const SwitchAnimation({super.key});

  @override
  State<SwitchAnimation> createState() => _SwitchAnimationState();
}

class _SwitchAnimationState extends State<SwitchAnimation> {
  bool isSwitchTrue = false;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: GestureDetector(
        onTap: (){
          isSwitchTrue=!isSwitchTrue;

        },
        child: Center(
          child: AnimatedSwitcher(
            duration: Duration(seconds: 1),
            child: (isSwitchTrue)?Container(
              key: Key('1'),
              width: 100,
              height: 200,
              color: Colors.black,
            ):
            Container(
              key: Key('2'),
              width: 200,
              height: 300,
              color: Colors.yellow,
            )
            ),
        ),
      ),

    );
  }
}