import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  const RowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
         //crossAxisAlignment: CrossAxisAlignment.end,
     mainAxisSize: MainAxisSize.max,
          children: [
            Icon(Icons.account_balance_rounded,size: 50),
            FlutterLogo(),
            Text("Trueline",style: TextStyle(fontSize: 50),),
          FlutterLogo(),
          ],
        ),
      ),
    );
  }
}
