import 'package:flutter/material.dart';
import 'package:picki/Screens/Login/login_screen.dart';
import 'package:picki/constant.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:'Picki App Auth',
      theme: ThemeData( 
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: LoginScreen(),
    );
  }
}
