import 'package:flutter/material.dart';

class ElevatedButtonWidget extends StatelessWidget {
  const ElevatedButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(onPressed: (){},
            style: ElevatedButton.styleFrom(
            ),
            child: const Text("E L E V A T E D B U T T O N "),),
      ),
    );
  }
}
