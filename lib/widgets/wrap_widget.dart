import 'package:flutter/material.dart';

class WrapWidget extends StatelessWidget {
  const WrapWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Wrap(
        spacing: 10,
          runSpacing: 10,
          alignment: WrapAlignment.center,
          direction: Axis.horizontal,
          children: [
            // for(int i=1; i<=10; i++)
            Container(
              height: 100,
              width: 100,
              color: Colors.amber,

            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.green,
            ),Container(
              height: 100,
              width: 100,
              color: Colors.blue,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.amber,

            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.green,
            ),Container(
              height: 100,
              width: 100,
              color: Colors.blue,
            ),Container(
              height: 100,
              width: 100,
              color: Colors.amber,

            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.green,
            ),Container(
              height: 100,
              width: 100,
              color: Colors.blue,
            ),Container(
              height: 100,
              width: 100,
              color: Colors.amber,

            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.green,
            ),Container(
              height: 100,
              width: 100,
              color: Colors.blue,
            )
          ],
        ),

    );
  }
}
