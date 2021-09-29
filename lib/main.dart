import 'package:flutter/material.dart';
import 'homeScreen.dart';
import 'loginScreen.dart';
import 'detail.dart';
import 'furniture.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: Furniture(),
      home: LoginScreen(),
      //HomeScreen(),
    );
  }
}
