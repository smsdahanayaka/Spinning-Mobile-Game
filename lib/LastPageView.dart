import 'dart:async';
import 'package:flutter/material.dart';
import 'SplashView.dart';

class LastPageView extends StatefulWidget {
  const LastPageView({Key? key}) : super(key: key);

  @override
  State<LastPageView> createState() => _SpiningWheelState();
}

class _SpiningWheelState extends State<LastPageView> {



  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds:3), () {
      // Navigate to FirstPage (replace current route)
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>const SplashView()));
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
