import 'package:flutter/material.dart';

class ColumnWidget extends StatelessWidget {
  const ColumnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        //textDirection: TextDirection.rtl,
       // mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
         Container(height: 100,width: 100,color: Colors.amber,),
          Container(height: 100,width: 500,color: Colors.green,),
          Container(height: 100,width: 100,color: Colors.red,),
          Container(height: 100,width: 100,color: Colors.blue,)
        ],
      ),
    );
  }
}


/*
 Icon(Icons.account_balance_rounded,size: 50),
          FlutterLogo(),
          Text("Trueline",style: TextStyle(fontSize: 50),),
          FlutterLogo(),
 */