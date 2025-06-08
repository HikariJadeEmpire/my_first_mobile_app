import 'package:flutter/material.dart';

class MyCurrency extends StatelessWidget {
  const MyCurrency({super.key});

  @override
  Widget build(BuildContext) {

    // We treat the MaterialApp as a background, and then paste the Scaffold on it.
    // Scaffold is the space where we can put any widget into it.
    // So, in the Scaffold we put the Center widget which has a Text in it.

    return const Scaffold(
      body: Center(
        child: Text('Hello, world !'),
      ),
    );
  }

}