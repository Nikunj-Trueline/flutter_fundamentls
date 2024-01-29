import 'package:flutter/material.dart';

class SecondScreenProjectDataPass extends StatelessWidget {

   String dataFromPrevious;

  SecondScreenProjectDataPass({
    super.key,
    required this.dataFromPrevious,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(
      child: Text(dataFromPrevious,style: TextStyle( fontSize: 30,fontWeight: FontWeight.w500)),
    ));
  }
}
