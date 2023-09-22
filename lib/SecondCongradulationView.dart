import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

import 'SecondRound.dart';

class SecondCongradulationView extends StatefulWidget {
  const SecondCongradulationView({Key? key}) : super(key: key);

  @override
  State<SecondCongradulationView> createState() => _SpiningWheelState();
}

class _SpiningWheelState extends State<SecondCongradulationView> {



  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds:3), () {
      // Navigate to FirstPage (replace current route)
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SecondRound()));
    });

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //background pic
          Image.asset(
            'assets/images/consethred.png',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),

        ],
      ),
    );
  }
}
