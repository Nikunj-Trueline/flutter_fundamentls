import 'package:flutter/material.dart';

class TextButtonWidget extends StatelessWidget {
  const TextButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(onPressed: (){
   print("LOG_IN BUTTON PRESSED");
        }, child: Text("L O G _ I N "),
          onLongPress: () {

          },
          style: TextButton.styleFrom(
            fixedSize: Size(100,50),
            backgroundColor: Colors.amber,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),

            ),
            elevation: 30,
            shadowColor: Colors.black
          ),
        ),


      ),
    );;
  }
}
