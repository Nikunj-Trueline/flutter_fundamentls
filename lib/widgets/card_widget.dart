import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Card(
        color: Colors.purple,
        shadowColor: Colors.deepPurple,
        elevation: 50,
        margin: EdgeInsets.all(20),
        child: Container(
          height: 200,
          width: 200,
        ),

      ),
    );
  }
}
