import 'dart:async';
import 'package:flutter/material.dart';
import 'package:tiles_2/main.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: AnimatedSplashScreen(
            duration: 3000,
            splash: ("assets/images/TilesFull.jpg"),
            nextScreen: HomePage(),
            splashTransition: SplashTransition.fadeTransition,
            pageTransitionType: PageTransitionType.fade,
            backgroundColor: Color(0xFF111111)
        ),
    );
  }
}

