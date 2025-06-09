import 'package:flutter/material.dart';

class MyCurrency extends StatelessWidget {
  const MyCurrency({super.key});

  @override
  Widget build(BuildContext) {

    // We treat the "MaterialApp" as a background (In "main.dart" file), and then paste the "Scaffold" on it.

    return const Scaffold(

      // "Scaffold" is the space where we can put any widget into it.

      backgroundColor: Color.fromRGBO(0, 0, 0, 1),
      body: Center(

        // So, in the "Scaffold" we put the "Center" widget which has a "Text" in it.

        child: ColoredBox(
          color: Color.fromRGBO(0, 0, 0, 1),

          // ColoredBox is to see how "Column" is used in the "Scaffold" space by colored it out.

          child: Column(

            // "Column" is the way to arrange the widgets as columns.
            
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            
            children: [
              Text(
                'Hello, World !', 
                style: TextStyle(
                  color: Color.fromRGBO(247, 249, 249, 1),
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  ),
                ),

                TextField(

                  // Style of an user's input text.

                  style: TextStyle(
                      color: Color.fromRGBO(247, 249, 249, 1),
                      fontSize: 14,
                    ),

                  keyboardType: TextInputType.number,

                  // style of an input hint text or label text.

                  decoration: InputDecoration(
                      // labelStyle: TextStyle(
                      //   color: Color.fromRGBO(247, 249, 249, 1),
                      //   fontSize: 20,
                      // ),
                      // labelText: 'Input',
                      hintText: ' Please enter your amount in USD.',
                      hintStyle: TextStyle(
                          color: Color.fromRGBO(247, 249, 249, 1),
                          fontSize: 14,
                        ),
                      prefixIcon: Icon(
                          Icons.monetization_on_outlined, 
                          color: Color.fromRGBO(247, 249, 249, 1),
                          size: 22,
                        ),
                      prefixIconConstraints: BoxConstraints(maxHeight: 25, minWidth: 10),
                      contentPadding: EdgeInsetsGeometry.all(18)
                    ),
                    
                ),

            ],
          ),
          ) 
      )
    );
  }

}