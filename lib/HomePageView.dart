import 'package:flutter/material.dart';
import 'package:spinn/JeansSpinView.dart';
import 'package:spinn/SportBraSpinView.dart';
import 'package:spinn/TopsSpinView.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({Key? key}) : super(key: key);

  @override
  State<HomePageView> createState() => _newViewState();
}

class _newViewState extends State<HomePageView> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight=MediaQuery.of(context).size.height;
    return Scaffold(
      body:Stack(
        children: [

          // Add background image
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

                // set some space
                const SizedBox(
                  height: 100,

                ),

                // set title
                Container(
                  width: screenWidth*0.5,
                  height: screenHeight*0.1,
                  //color: Colors.red,
                  child:const Center(
                    child: Text("Game Start Now",style: TextStyle(color: Colors.red,fontSize:50,fontWeight: FontWeight.w500)),
                  ),
                ),

                // set subtitle
                Container(
                  width: screenWidth*0.5,
                  height: screenHeight*0.1,
                  //color: Colors.red,
                  child:const Center(
                    child:Text("Click One !",style: TextStyle(color: Colors.red,fontSize:45,fontWeight: FontWeight.w400,)),
                  ),
                ),

                // set some space
                const SizedBox(
                  height: 100,
                ),

                // set bottom row for add buttns
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    // add 1st img button box
                    Container(
                      width: screenWidth*0.3,
                      height: screenHeight*0.4,
                      //color: Colors.red,
                      child: GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) =>const TopSpinView()));
                          },
                          child:Image.asset(
                            'assets/images/2.2.png',
                            fit: BoxFit.fitHeight,
                            width: double.infinity,
                            height: double.infinity, // Adjust the button size as needed
                          ),
                       ),
                    ),

                    // set some space
                    const SizedBox(
                      width: 5,
                    ),

                    // add 2nd img button box
                    Container(
                      width: screenWidth*0.3,
                      height: screenHeight*0.4,
                     // color: Colors.red,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) =>const JeansSpinView()));
                        },
                        child:Image.asset(
                          'assets/images/2.3.png',
                          width: screenWidth * 0.5, // Adjust the button size as needed
                          height: screenHeight * 0.5, // Adjust the button size as needed
                        ),
                      ),
                    ),

                    // set some space
                    const SizedBox(
                      width: 5,
                    ),

                    // add 3rd img button box
                    Container(
                      width: screenWidth*0.3,
                      height: screenHeight*0.4,
                      //color: Colors.red,
                      child:GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) =>const SportBraSpinView()));
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
