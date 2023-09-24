import 'package:flutter/material.dart';

import 'HomePageView.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);



  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {

  @override
  // ignore: must_call_super
  initState() {

    super.initState();

    Future.delayed(const Duration(seconds:7), () { // Delayed and navigate to main view
      // Navigate to FirstPage (replace current route)
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomePageView()));
    });
  }

  @override
  Widget build(BuildContext context) { //build method
      return Scaffold(
          body: Container(
            decoration: const BoxDecoration(
              image:  DecorationImage( //Add background image 1
                image: AssetImage('assets/images/BG.1.png'),
                fit: BoxFit.fill,
              ),
            ),
            child: Center(
              child: Container(
                decoration:const BoxDecoration(
                  image: DecorationImage( //Add background image 2
                    image: AssetImage('assets/images/1.01.png'),
                    //fit: BoxFit.cover,
                  ),
                ),
                child: Center(
                  child: Container(
                    decoration:const BoxDecoration(
                      image: DecorationImage( //Add Splash Screen image 3
                        image: AssetImage('assets/images/1.02.png'),
                        //fit: BoxFit.cover,
                      ),
                    ),
                    child: Center(
                      child: Container(
                        decoration:const BoxDecoration(
                          image: DecorationImage( //Add Splash Screen image 4
                            image: AssetImage('assets/images/1.03.png'),
                          ),
                        ),
                        child: Center(
                          child: Container(
                            decoration:const  BoxDecoration(
                              image: DecorationImage( //Add Splash Screen image 5
                                image: AssetImage('assets/images/1.04.png'),
                              ),
                            ),
                            child: Center(
                              child: Container(
                                decoration:const BoxDecoration(
                                  image: DecorationImage( //Add Splash Screen image 6
                                    image: AssetImage('assets/images/1.05.png'),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      }
      }
