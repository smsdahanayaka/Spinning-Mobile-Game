import 'dart:async';
import 'package:flutter/material.dart';
import 'package:spinn/HomePageView.dart';


class TryAgainView extends StatefulWidget {
  const TryAgainView({Key? key}) : super(key: key);

  @override
  State<TryAgainView> createState() => _SpiningWheelState();
}

class _SpiningWheelState extends State<TryAgainView> {



  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    // dealy method for back to home page
    Future.delayed(const Duration(seconds:3), () {
      // Navigate to FirstPage (replace current route)
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomePageView()));
    });

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [

          //add background img
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
