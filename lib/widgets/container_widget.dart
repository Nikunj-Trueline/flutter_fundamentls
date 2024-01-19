import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
       padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.all(50),
        alignment: Alignment.topCenter,
        decoration: BoxDecoration(
          border: Border.all(width: 1,
          color: Colors.purple),
          gradient: LinearGradient(colors: [
            Colors.deepPurple.shade900,
            Colors.deepPurple.shade500,
            Colors.deepPurple.shade200
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight),
          boxShadow: const [
            BoxShadow(
              blurRadius: 40,
              color: Colors.black,
            offset: Offset(10, 20),

              spreadRadius: 5
            )
          ],
          color: Colors.amber,
          borderRadius:BorderRadius.only(topLeft: Radius.circular(20),bottomRight: Radius.circular(30),),),
            //    color: Colors.amber,
        child:  const Text("Trueline Institute"),

        ),
    );
  }
}


/*

 Colors.deepPurple.shade900,
              Colors.deepPurple.shade500,
              Colors.deepPurple.shade200

 */