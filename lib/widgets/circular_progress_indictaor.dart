import 'package:flutter/material.dart';

class CircularProgressIndicatorWidget extends StatefulWidget {
  const CircularProgressIndicatorWidget({super.key});

  @override
  State<CircularProgressIndicatorWidget> createState() => _CircularProgressIndicatorWidgetState();
}

class _CircularProgressIndicatorWidgetState extends State<CircularProgressIndicatorWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(

          child: CircularProgressIndicator(
      strokeAlign: 10,
            strokeWidth: 10,
            color: Colors.blue,
           // backgroundColor: Colors.amber,
          )),
    );
  }
}
