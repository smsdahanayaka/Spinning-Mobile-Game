import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

import 'FirstPage.dart';
import 'SecondRound.dart';
import 'SplashView.dart';

class LastCongradulationView extends StatefulWidget {
  const LastCongradulationView({Key? key}) : super(key: key);

  @override
  State<LastCongradulationView> createState() => _SpiningWheelState();
}

class _SpiningWheelState extends State<LastCongradulationView> {



  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds:3), () {
      // Navigate to FirstPage (replace current route)
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SplashView()));
    });

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //background pic
          Image.asset(
            'assets/images/30discount.png',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),

        ],
      ),
    );
  }
}
