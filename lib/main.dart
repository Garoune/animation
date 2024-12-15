import 'package:flutter/material.dart';
import 'package:flutter_application_animation/container_animation.dart';
import 'package:flutter_application_animation/scale_animation.dart';
import 'package:flutter_application_animation/switch_animation.dart';
import 'package:flutter_application_animation/text_animation.dart';

void main() {
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SwitchAnimation(),
    );
  }
}