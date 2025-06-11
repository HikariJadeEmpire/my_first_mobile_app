import 'package:flutter/material.dart';

class MyCurrency extends StatefulWidget {

  const MyCurrency({super.key});

  @override
  State<MyCurrency> createState() {
    return _MyCurrencyState();
  }
}

// create a private class below because we don't need to show it to public.

class _MyCurrencyState extends State<MyCurrency> {

  // Now you can put the variables which use for parsing between widget here.

  double myResults = 0;
  String explain = 'Hello, world !';
  final TextEditingController myTextCon = TextEditingController();

  // setting convert function

  void converto () {
    try {
        setState(() {
            explain = 'The Double value is';
            myResults = double.parse(myTextCon.text) * 2;
          }
        );
        debugPrint('[ USER\'S LOG ] The value of : ${myTextCon.text} has been sent to CONVERT to --> ${myResults}');
      } 
    catch (e, s) {
      debugPrint(' [ ERROR ] $e : $s');
      setState(() {
          explain = 'Your input should not contain any special characters like , @ \$ or space';
          myResults = 0;
          }
        );
      }
  }

  // This one is to clear the states.
  @override
  void dispose() {
    myTextCon.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    final backgroundColor = Color.fromRGBO(247, 249, 249, 1);
    final secondColor = Color.fromRGBO(23, 32, 42, 1);
    final highlightColor = Color.fromRGBO(229, 255, 0, 1);

    // We treat the "MaterialApp" as a background (In "main.dart" file), and then paste the "Scaffold" on it.

    return Scaffold(

      // "Scaffold" is the space where we can put any widget into it.
      // "appBar" is like NavBar. If your are curious, you can change the backgroundColor to see it.
      // in "appBar" there is an actions property, this property always being used as a setting icon or something more.
      // We will not do it here, yet.

      appBar: AppBar(
          title: Text(
                  'I will double your input number', 
                  style: TextStyle(
                    color: secondColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    ),
                  ),
          backgroundColor: backgroundColor,
          elevation: 0,
        ),

      backgroundColor: backgroundColor,
      body: Center(

        // So, in the "Scaffold" we put the "Center" widget which has a "Text" in it.

        child: ColoredBox(
          color: backgroundColor,

          // ColoredBox is to see how "Column" is used in the "Scaffold" space by colored it out.

          child: Column(

            // "Column" is the way to arrange the widgets as columns.
            
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            
            children: [

              Container(

                // Padding is the space inside
                // Margin is the space outside

                padding: EdgeInsets.all(30.0),
                margin: EdgeInsets.all(0.0),
                // color: Color.fromRGBO(229, 255, 0, 1),

                child: Text(
                  explain, 
                  style: TextStyle(
                    color: secondColor,
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    ),
                  ),
              ),

              Container(

                // Padding is the space inside
                // Margin is the space outside

                padding: EdgeInsets.all(10.0),
                margin: EdgeInsets.all(0.0),
                // color: Color.fromRGBO(229, 255, 0, 1),

                child: Text(
                  myResults.toStringAsFixed(3), 
                  style: TextStyle(
                    color: secondColor,
                    fontSize: 44,
                    fontWeight: FontWeight.bold,
                    ),
                  textAlign: TextAlign.center,
                  ),
              ),

              Container(
                padding: EdgeInsets.fromLTRB(30, 30, 30, 10),
                child: TextField(
                
                  // Style of an user's input text.
                
                  style: TextStyle(
                      color: secondColor,
                      fontSize: 14,
                    ),
                
                  keyboardType: TextInputType.numberWithOptions(decimal: true,),
                
                  // style of an input hint text or label text.
                
                  decoration: InputDecoration(
                      // labelStyle: TextStyle(
                      //   color: Color.fromRGBO(247, 249, 249, 1),
                      //   fontSize: 20,
                      // ),
                      // labelText: 'Input',
                      hintText: 'Please enter your amount.',
                      hintStyle: TextStyle(
                          color: secondColor,
                          fontSize: 14,
                        ),
                      prefixIcon: Padding(
                          padding: EdgeInsetsGeometry.only(left: 20.0, bottom: 2.0, right: 10.0, top: 2.0),
                          child: Icon(
                            Icons.monetization_on_outlined, 
                            color: secondColor,
                            size: 22,
                            ),
                          ),
                      prefixIconConstraints: BoxConstraints(maxHeight: 25, minWidth: 10),
                      contentPadding: EdgeInsetsGeometry.all(20.0),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: highlightColor, 
                            width: 4.0,
                            style: BorderStyle.solid, // ".none" It's mean not showing the borderline
                            ),
                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(style: BorderStyle.none,),
                        ),
                      
                    ),
                    
                    controller: myTextCon,
                    onSubmitted: (value) {
                      // In Flutter there are 3 types of mode :
                      // 1. Debug mode
                      // 2. Release mode : is how users can experience your app. 
                      //                    Type : $ flutter run --release 
                      //                    ,To experience the app on real mobile phone
                      // 3. Profile mode : is happen to check whether each mode is correctly managed

                      // if (kDebugMode) {
                      //   debugPrint('Button clicked.');
                      // }

                      debugPrint('[ USER\'S LOG ] The value : $value has been submitted.');
                      converto();
                      
                    },

                ),
              ),

              TextButton(
                onPressed: converto, 
                style: ButtonStyle(
                    elevation: WidgetStatePropertyAll(6),
                    backgroundColor: WidgetStatePropertyAll(highlightColor),
                    foregroundColor: WidgetStatePropertyAll(secondColor),
                    minimumSize: WidgetStatePropertyAll(Size(160, 60)),
                    shape: WidgetStatePropertyAll(
                      RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.all(Radius.circular(10.0)))
                    ),
                  ),
                // in style part you can also do this : TextButton.styleFrom()
                // so, you can put any properties that required in TextButton.styleFrom() instead of using ButtonStyle()

                child: Text(
                    'CONVERT !',
                    textAlign: TextAlign.center,
                    ),
                ),

            ],
          ),
          ) 
      )
    );
  }
}
