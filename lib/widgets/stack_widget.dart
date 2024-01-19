import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade300,
      body: Stack(

        children: [
          Container(
            height: 500,
            width: 500,
            //color: Colors.green,
            decoration: BoxDecoration(
              color: Colors.deepPurple,
              borderRadius:BorderRadius.only(bottomLeft: Radius.circular(30),bottomRight: Radius.circular(30))
            ),
          ),
          Positioned(
top: 450,
            child: Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Container(
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius:BorderRadius.all(Radius.circular(20))
                ),
              ),
            ),
          ),


        ],
      ),
    );
  }
}
