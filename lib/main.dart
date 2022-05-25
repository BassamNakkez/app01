import 'package:app03/models/User/messenger.dart';
import 'package:flutter/material.dart';
import 'layout/layout_screen.dart';

import 'modules/OnBoarding/on_boarding_screen.dart';
import 'modules/login/login_screen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  const  MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  LayoutScreen(),
    );
  }
}
//LayoutScreen
//LoginScreen
//OnBoardingScree