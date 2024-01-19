import 'package:flutter/material.dart';

class SafeAreaWidget extends StatelessWidget {
  const SafeAreaWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        //top: false,
        child: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.deepPurple,
         alignment: Alignment.topLeft,
          child: Icon(Icons.account_balance_rounded),
        ),
      ),
    );
  }
}
