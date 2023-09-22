import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'SplashView.dart';


void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      //DeviceOrientation.portraitUp, // Enable portrait up only
      DeviceOrientation.landscapeLeft, // Enable landscape left
      DeviceOrientation.landscapeRight, // Enable landscape right
    ]);
    return MaterialApp(
      title: 'My Flutter App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashView(),
    );
  }
}