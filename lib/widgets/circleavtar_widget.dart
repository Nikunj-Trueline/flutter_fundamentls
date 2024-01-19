import 'package:flutter/material.dart';

class CircleAvtarWidget extends StatelessWidget {
  const CircleAvtarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircleAvatar(
          backgroundColor: Colors.yellow,
          radius: 73,
          child: CircleAvatar(
                 //   child: Text('N'),
            radius: 70,
            backgroundColor: Colors.amber,
            // minRadius: 30,
            // maxRadius: 100,
            backgroundImage: NetworkImage("https://images.pexels.com/photos/102104/pexels-photo-102104.jpeg?auto=compress&cs=tinysrgb&w=400"),

              foregroundImage: NetworkImage("https://images.pexels.com/photos/3588166/pexels-photo-3588166.jpeg?auto=compress&cs=tinysrgb&w=400"),
          ),
        ),
      ),
    );
  }
}
