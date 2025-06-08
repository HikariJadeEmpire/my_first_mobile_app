// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_currency/currency_mat.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    // Types of widgets :
    // 1. StatefulWidget
    // 2. StatelessWidget

    // State : Status of the app

    // The two most popular types of design :
    // 1. Material Design >> Made by Google >> This is how Android apps look
    // 2. Cupertino Design >> Made by Apple >> This is how iOS apps look

    return MaterialApp(
      home: MyCurrency(),
    );
  }
}