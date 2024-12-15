import 'package:flutter/material.dart';

class ContainerAnimation extends StatefulWidget {
  const ContainerAnimation({super.key});

  @override
  State<ContainerAnimation> createState() => _ContainerAnimationState();
}

class _ContainerAnimationState extends State<ContainerAnimation> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 100,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 3,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    _selectedIndex = index;
                  });
                },
                child: AnimatedContainer(
                  margin: EdgeInsets.all(20),
                  duration: Duration(milliseconds: 300),
                  width: (index == _selectedIndex) ? 100 : 50,
                  height: 100,
                  color: (index == _selectedIndex) ? Colors.green : Colors.red,
                  child: AnimatedScale(
                    scale: (index == _selectedIndex) ? 1 : 0,
                    duration: Duration(microseconds: 300),
                    child: Center(child: Text('red')),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
