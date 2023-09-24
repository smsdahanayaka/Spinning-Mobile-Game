import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'FirstCongView.dart';
import 'HomePageView.dart';

class JeansSpinView extends StatefulWidget {
  const JeansSpinView({Key? key}) : super(key: key);

  @override
  State<JeansSpinView> createState() => _SpiningWheelState();
}

class _SpiningWheelState extends State<JeansSpinView> {

  var arrayList=["Energize Full Length Tight","ATHLEISURE","Energize Crew Neck Tee","ATHLEISURE","Energize Sports Capri","ATHLEISURE","ENERGIZE TANK"];
  late Timer timer;
  late Random random;
  var result;
  late double degree;
  //late int time;
  late String val;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    random=Random();
    degree=0;
    result="0";


  }

  void rotateWheel(){
    //time=random.nextInt(100000);
    int time=20000;
    timer=Timer.periodic(Duration(milliseconds: 10), (timer) {

      if(time>0){
        setState(() {
          degree=random.nextInt(360).toDouble();
          result=calclatePoint(degree);
          print(degree);
        });
        print("degree  $degree");
        time =time-100;
      }

    });




  }

  String calclatePoint(double degree){
    int lowPoint=0;
    int arc=45; //360/8
    int sectors=8;
    String res="";

    for(int i=sectors;i>0;i--){

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
            'assets/images/4.1.png',
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
                                image:const AssetImage('assets/images/4.2.png'),
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
                        image:const AssetImage('assets/images/arrow.png'),
                      ),
                    ),
                  ),

                  // size box
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 150,
                    height: 30,
                    child: ElevatedButton(
                      style:const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.pink),

                      ),
                      onPressed: (){
                        rotateWheel();
                      },

                      child:const Text("SPIN"),
                    ),
                  ),




                ],
              ),

              //grid 2nd item
              const Align(
                alignment: Alignment.topLeft,
                child: Text("",
                  style:TextStyle(
                    color: Color.fromRGBO(233, 30, 99, 50),
                    fontSize: 20,
                  ),

                ),
              ),


            ],
          ),
          Positioned(
            bottom: 100,
            right: 200,
            child: ElevatedButton(
              style: ButtonStyle(

                backgroundColor: MaterialStateProperty.all(Colors.pink),
              ),
              onPressed: () {
                if(result=="1" || result =="3" || result =="5" || result =="7"){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>const FirstCongView()));
                }else{

                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>const HomePageView()));

                }
              },
              child:const Text("Next"),
            ),
          ),
        ],
      ),
    );

  }
}
