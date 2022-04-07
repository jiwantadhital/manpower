import 'package:flutter/material.dart';
import 'package:manpower/views/home.dart';
import 'package:manpower/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Manpower',
     debugShowCheckedModeBanner: false,
      home: Welcome(),
    );
  }
}

