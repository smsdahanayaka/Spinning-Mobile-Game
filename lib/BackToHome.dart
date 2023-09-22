import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:spinn/FirstPage.dart';

import 'SecondRound.dart';

class BackToHome extends StatefulWidget {
  const BackToHome({Key? key}) : super(key: key);

  @override
  State<BackToHome> createState() => _SpiningWheelState();
}

class _SpiningWheelState extends State<BackToHome> {



  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds:3), () {
      // Navigate to FirstPage (replace current route)
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => FirstPage()));
    });

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //background pic
          Image.asset(
            'assets/images/tryagain.png',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),

        ],
      ),
    );
  }
}
