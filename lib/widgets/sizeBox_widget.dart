import 'package:flutter/material.dart';

class SizeBoxWidget extends StatelessWidget {
  const SizeBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Container(
              height: 200,
              width: 100,
              color: Colors.blue,
            ),
          ),
          SizedBox(height: 40,width: 20,),
          Container(
            height: 200,
            width: 100,
            color: Colors.blue,
          ),
          SizedBox(height: 40,width: 20,),
          Container(
            height: 200,
            width: 100,
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}
