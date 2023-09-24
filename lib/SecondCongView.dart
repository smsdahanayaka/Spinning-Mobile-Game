import 'dart:async';
import 'package:flutter/material.dart';
import 'package:spinn/SecondRoundSpinView.dart';

import 'ThirdRoundSpinView.dart';

class SecondCongView extends StatefulWidget {
  const SecondCongView({Key? key}) : super(key: key);

  @override
  State<SecondCongView> createState() => _SpiningWheelState();
}

class _SpiningWheelState extends State<SecondCongView> {



  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds:3), () {
      // Navigate to FirstPage (replace current route)
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const ThirdRoundSpinView()));
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
