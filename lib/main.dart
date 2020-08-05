import 'package:flutter/material.dart';
import 'package:vimo/home.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute:'home',
      routes:{'home':(context)=>Home(),},
    );}
}

