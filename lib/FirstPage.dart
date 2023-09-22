import 'package:flutter/material.dart';
import 'package:spinn/JeansSpinView.dart';
import 'package:spinn/SportBraSpinView.dart';
import 'package:spinn/TopsSpinView.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _newViewState();
}

class _newViewState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight=MediaQuery.of(context).size.height;
    return Scaffold(
      body:Stack(
        children: [
          Image.asset(
            'assets/images/BG.1.png',
            fit: BoxFit.fill,
            width: screenWidth,
            height: screenHeight,
          ),
          Align(
            alignment: Alignment.topCenter,
            child:  Column(

              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 100,

                ),
                Container(
                  width: screenWidth*0.5,
                  height: screenHeight*0.1,
                  //color: Colors.red,
                  child: Center(
                    child: Text("Game Start Now",style: TextStyle(color: Colors.red,fontSize:50,fontWeight: FontWeight.w500)),
                  ),
                ),
                Container(
                  width: screenWidth*0.5,
                  height: screenHeight*0.1,
                  //color: Colors.red,
                  child: Center(
                    child: Text("Click One !",style: TextStyle(color: Colors.red,fontSize:45,fontWeight: FontWeight.w400,)),
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: screenWidth*0.3,
                      height: screenHeight*0.4,
                      //color: Colors.red,
                      child: GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => TopSpinView()));
                          },
                          child:Image.asset(
                            'assets/images/2.2.png',
                            fit: BoxFit.fitHeight,
                            width: double.infinity,
                            height: double.infinity, // Adjust the button size as needed
                          ),
                       ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      width: screenWidth*0.3,
                      height: screenHeight*0.4,
                     // color: Colors.red,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => JeansSpinView()));
                        },
                        child:Image.asset(
                          'assets/images/2.3.png',
                          width: screenWidth * 0.5, // Adjust the button size as needed
                          height: screenHeight * 0.5, // Adjust the button size as needed
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      width: screenWidth*0.3,
                      height: screenHeight*0.4,
                      //color: Colors.red,
                      child:GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SportBraSpinView()));
                        },
                        child:  Image.asset(
                          'assets/images/2.4.png',
                          width: screenWidth * 0.5, // Adjust the button size as needed
                          height: screenWidth * 0.5, // Adjust the button size as needed
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )





        ],
      ),




    );
  }
}
