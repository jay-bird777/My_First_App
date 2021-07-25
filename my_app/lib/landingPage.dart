import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'landingPage2.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

double opacity = 1.0;
bool stopLoop = false;


class _LandingPageState extends State<LandingPage> {






  Widget build(BuildContext context) {



    return MaterialApp(
      home: Scaffold(
        body: Stack(
          alignment: new Alignment(
            0,
            0.0,
          ),
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "images/0f213150179683.58c970f0c8548.jpg",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Colors.orangeAccent.withOpacity(0.6),
                    Colors.black12.withOpacity(0.2),
                  ]),
                ),
              ),
            ),

            //this stack contains the two texts displayed on screen
            Container(
              child: Stack(
                alignment: new Alignment(
                  0,
                  6.0,
                ),
                children: [
                  AnimatedOpacity(
                    opacity: opacity == 1 ? 0 : 1,
                    duration: Duration(seconds: 1),
                    child: Text(
                      'Tap anywhere to Begin',
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'DancingScript',
                      ),
                    ),
                  ),
                  // this button is responsible for the fading in of second text
                  Text(
                    'Welcome',
                    style: TextStyle(
                      fontSize: 70,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'DancingScript',
                    ),
                  ),
                ],
              ),
            ),
            TextButton(
              onPressed: () {
                stopLoop = true;
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => LandingPage2(),
                  ),
                );
              },
              child: SizedBox(
                width: double.maxFinite,
                height: double.maxFinite,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
