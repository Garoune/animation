import 'package:flutter/material.dart';

class ScaleAnimation extends StatefulWidget {
  const ScaleAnimation({super.key});

  @override
  State<ScaleAnimation> createState() => _ScaleAnimationState();
}

class _ScaleAnimationState extends State<ScaleAnimation> {
  double scale = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedScale(
          duration: const Duration(seconds: 1),
          scale: 1,
          child: GestureDetector(
            onTap: () {
              setState(
                () {
                  setState(
                    () {
                      scale += 0.5;
                    },
                  );
                },
              );
            },
            child: SizedBox(
              height: 100,
              width: 100,
              child: Image.asset('images/khiyar.png'),
            ),
          ),
        ),
      ),
    );
  }
}
