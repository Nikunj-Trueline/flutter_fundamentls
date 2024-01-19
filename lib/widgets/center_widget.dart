import 'package:flutter/material.dart';


class CenterWidget extends StatelessWidget {
  const CenterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const  Text("CENTER WIDGET"),
      ),
      body: Center(
        child: GestureDetector(
          onTap: (){},
          onLongPress: (){},
          onDoubleTap: (){},
          child: Container(
            height: 200,
            width: 200,
            color: Colors.black,
          ),
        ),


      ),
    );
  }
}
