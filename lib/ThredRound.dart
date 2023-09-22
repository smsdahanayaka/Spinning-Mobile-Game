import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

import 'BackToHome.dart';
import 'FirstPage.dart';
import 'LastPage.dart';
import 'SecondCongradulationView.dart';

class ThredRound extends StatefulWidget {
  const ThredRound({Key? key}) : super(key: key);

  @override
  State<ThredRound> createState() => _SpinningWheelState();
}

class _SpinningWheelState extends State<ThredRound> {
  var arrayList = [""];
  late Timer timer;
  late Random random;
  late String result;
  late double degree;

  @override
  void initState() {
    super.initState();
    random = Random();
    degree = 0;
    result = "0";
  }

  void rotateWheel() {
    int time = 20000;
    timer = Timer.periodic(Duration(milliseconds: 10), (timer) {
      if (time > 0) {
        setState(() {
          degree = random.nextInt(360).toDouble();
          result = calculatePoint(degree);
        });
        time = time - 100;
      }
    });
  }

  String calculatePoint(double degree) {
    int lowPoint = 0;
    int arc = 90; // 360/8
    int sectors = 3;
    String res = "";

    for (int i = sectors; i >= 0; i--) {
      if (degree > lowPoint && degree < lowPoint + arc) {
        res = i.toString();
        break;
      }
      lowPoint = lowPoint + arc;
    }
    return res;
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          // Background pic
          Image.asset(
            'assets/images/3rd.2.png',
            fit: BoxFit.fill,
            width: double.infinity,
            height: double.infinity,
          ),
          // Grid
          GridView.count(
            crossAxisCount: 2,
            mainAxisSpacing: 0,
            children: [
              // Grid 1st item
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: screenHeight * 0.05,
                    width: screenWidth * 0.05,
                  ),
                  // Spin wheel
                  Container(
                    height: screenHeight * 0.55,
                    width: screenWidth * 0.55,
                    child: Stack(
                      children: [
                        Positioned(
                          child: Align(
                            alignment: Alignment.center,
                            child: Transform.rotate(
                              angle: 3.14 / 180 * degree,
                              child: Image(
                                width: screenWidth * 5.5,
                                height: screenHeight * 5.15,
                                image: AssetImage('assets/images/3rd.1.png'),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Spin arrow
                  Container(
                    height: screenHeight * 0.06,
                    width: screenWidth * 0.06,
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Image(
                        height: screenHeight * 0.06,
                        width: screenWidth * 0.06,
                        image: AssetImage('assets/images/arrow.png'),
                      ),
                    ),
                  ),
                  // Size box
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 150,
                    height: 30,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.pink),
                      ),
                      onPressed: () {
                        rotateWheel();
                      },
                      child: Text("SPIN"),
                    ),
                  ),
                ],
              ),
              // Grid 2nd item
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "",
                  style: TextStyle(
                    color: Color.fromRGBO(233, 30, 99, 50),
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
          // Button in the bottom right corner
          Positioned(
            bottom: 100,
            right: 200,
            child: ElevatedButton(
              style: ButtonStyle(

                backgroundColor: MaterialStateProperty.all(Colors.pink),
              ),
              onPressed: () {
                if(result=="0" || result =="1" || result =="2" || result =="3"){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LastCongradulationView()));
                }else{
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => FirstPage()));
                }
              },
              child: Text("Next"),
            ),
          ),
        ],
      ),
    );
  }
}
