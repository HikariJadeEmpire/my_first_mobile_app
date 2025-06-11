import 'package:flutter/material.dart';
import 'currency_stateful.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    // BuildContext is to tell the Flutter how widget tree is structed

    // Types of widgets :
    // 1. StatefulWidget
    // 2. StatelessWidget >> A widget without state (not sure)

    // State : Status of the app

    // The two most popular types of design :
    // 1. Material Design >> Made by Google >> This is how Android apps look
    // 2. Cupertino Design >> Made by Apple >> This is how iOS apps look

    return MaterialApp(
      home: MyCurrency(),
    );
  }
}