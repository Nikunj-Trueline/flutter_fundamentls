import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text(
        "Trueline is best IT company for IT servicies.",
        maxLines: 2,
       //textDirection: TextDirection.rtl,
        overflow: TextOverflow.fade,
        style: TextStyle(
        color: Colors.black,
        fontSize: 20,
        fontWeight: FontWeight.w500,
        wordSpacing: 10,
        letterSpacing: 5,
        backgroundColor: Colors.yellow,
        fontFamily: 'custom'

        // shadows: [
        //   Shadow(
        //
        //   )
        // ]


        //fontStyle: FontStyle.italic
      ),),),
    );
  }
}
