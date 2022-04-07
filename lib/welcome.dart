import 'package:flutter/material.dart';
import 'package:manpower/views/home.dart';
import 'package:flutter/animation.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

class Welcome extends StatefulWidget {
  const Welcome({ Key? key }) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      duration: 2000,
      nextScreen: MyHomePage(),
      splash:  Container(
          child: Center(
            child: Container(
              height: 100.0,
              width: 100.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                            color: Colors.lightBlueAccent,
              ),
              child: Center(child: Text("Manpower", style: TextStyle(color: Colors.white,fontSize: 20.0),)),
            ),
          ),
        ),
    );
  }
}