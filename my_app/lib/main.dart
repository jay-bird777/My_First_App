
import 'package:flutter/material.dart';
import 'package:my_app/landingPage2.dart';
import 'package:my_app/signUpPage2.dart';
import 'package:my_app/signUpPage3.dart';
import 'package:my_app/userProfilePage.dart';

import 'homePage1.dart';
import 'homePage2.dart';
import 'landingPage.dart';
import 'loginPage.dart';
import 'signUpPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: HomePage1().id,

      routes: {
        UserProfilePage().id:(context) => UserProfilePage(),
        LoginPage().id:(context) => LoginPage(),
        HomePage1().id:(context) => HomePage1(),
        HomePage2().id:(context) => HomePage2(),
        LandingPage().id:(context) => LandingPage(),
        LandingPage2().id:(context) => LandingPage2(),
        SignUpPage().id:(context) => SignUpPage(),
        SignUpPage2().id:(context) => SignUpPage2(),
        SignUpPage3().id:(context) => SignUpPage3(),
      },
    );
  }
}
