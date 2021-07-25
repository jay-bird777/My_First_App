import 'package:flutter/material.dart';
import 'package:my_app/userProfilePage.dart';

import 'homePage1.dart';
import 'landingPage.dart';
import 'loginPage.dart';
import 'signUpPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LandingPage(),
    );
  }
}
