import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

import 'FirstCongView.dart';

class checkView extends StatefulWidget {
  const checkView({Key? key}) : super(key: key);

  @override
  State<checkView> createState() => _SpiningWheelState();
}

class _SpiningWheelState extends State<checkView> {

  var arrayList=["ATHLEISURE","ESSENTIALS CREW NECK TEE","ATHLEISURE","ESSENTIALS CREW NACK TEE","ATHLEISURE","ESSENTIALS ENERGIZE SPORTS CAPRI","ENERGIZE TANK"];
  late Timer timer;
  late Random random;
  late String result;
  late double degree;
  late int timeNew;
  late String val;
  late int ch;
  late int x;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    random=Random();
    degree=0;
    result="0";


  }

  void rotateWheel(){

    int time=10000;
    timeNew=time;


    timer=Timer.periodic(Duration(milliseconds: 100), (timer) {

      if(time>100){
        setState(() {

          degree=random.nextInt(360).toDouble();
          result=calclatePoint(degree);
          //print(degree);
        });
        print("degree  $degree");
        time =time-100;
        ch=0;
      }else{
        if(ch!=2){
          x=0;
             goSecondRound();
        }




      }


    });




  }

  void goSecondRound(){

    if(ch==0 && x==0){
      print("kkkkkkkkkkkkkkkkkkkkkkk  $result");
      ch=2;
      x=2;

      if(result== 0 || result==2 || result==4 || result==6){


        // Navigate to FirstPage (replace current route)
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const FirstCongView()));
        return;

      }else{

        return;
      }

    }
  }

  String calclatePoint(double degree){
    int lowPoint=0;
    int arc=45; //360/8
    int sectors=7;
    String res="";
    if(timeNew<=100){
      print("degree");
      goSecondRound();
    }
    for(int i=sectors;i>=0;i--){

      if(degree>lowPoint && degree<lowPoint+arc){
        res=i.toString();
        break;
      }
      lowPoint=lowPoint+arc;
    }
    return res;
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight=MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(

        children: [

          //background pic
          Image.asset(
            'assets/images/5.1.png',
            fit: BoxFit.fill,
            width: double.infinity,
            height: double.infinity,
          ),

          //Grid
          GridView.count(

            crossAxisCount: 2,
            mainAxisSpacing: 0,

            children: [

              // grid 1st item
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: screenHeight*0.05,
                    width: screenWidth*0.05,
                  ),

                  // spin wheel
                  Container(
                    height: screenHeight*0.55,
                    width: screenWidth*0.55,
                    child: Stack(
                      children: [
                        Positioned(
                          child: Align(
                            alignment: Alignment.center,
                            child: Transform.rotate(
                              angle: 3.14/180*degree,
                              child: Image(
                                width: screenWidth*5.5,
                                height: screenHeight*5.15,
                                image: AssetImage('assets/images/5.2.png'),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  // spin arrow
                  Container(
                    height: screenHeight*0.06,
                    width: screenWidth*0.06,
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Image(
                        height: screenHeight*0.06,
                        width: screenWidth*0.06,
                        image: AssetImage('assets/images/arrow.png'),
                      ),
                    ),
                  ),

                  // size box
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 150,
                    height: 30,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.pink),

                      ),
                      onPressed: (){
                        rotateWheel();
                      },

                      child: Text("SPIN"),
                    ),
                  ),




                ],
              ),

              //grid 2nd item
              Align(
                alignment: Alignment.topLeft,
                child: Text(result,
                  style:TextStyle(
                    color: Color.fromRGBO(233, 30, 99, 50),
                    fontSize: 20,
                  ),

                ),
              ),


            ],
          ),

        ],
      ),
    );

  }
}
