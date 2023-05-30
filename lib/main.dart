// ignore_for_file: prefer_const_constructors, unused_local_variable, prefer_const_declarations

// import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
// import 'package:o_x_game/homepage.dart';
import 'package:o_x_game/splash.dart';
// import 'package:flutter/services.dart';

// import 'package:avatar_glow/avatar_glow.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final color = Colors.white;
    return MaterialApp(debugShowCheckedModeBanner: false, home: Splash());
  }
}
