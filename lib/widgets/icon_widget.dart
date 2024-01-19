import 'package:flutter/material.dart';

class IconWidget extends StatelessWidget {
  const IconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Icon(
          Icons.add_a_photo_outlined,
          size: 100,
          color: Colors.red,
          shadows: [
            Shadow(
              color: Colors.black,
              offset: Offset(10, 20),
              blurRadius: 100
            )
          ],
        ),
      ),
    );
  }
}
