import 'package:flutter/material.dart';

class ColorProperties extends StatelessWidget {
  const ColorProperties({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          color: Color.fromARGB(255, 156, 39, 176),
          //color: Color(0xFF008080),
         // color: Color.fromRGBO(2, 48, 32, 0.4)
        ),
      ),
    );
  }
}
