import 'package:flutter/material.dart';

class NavFourthScreen extends StatelessWidget {
  const NavFourthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text(
          'F O U R T H S C R E E N',
          style: TextStyle(
            height: 30,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.navigate_next,size: 30,),
        onPressed: () {

        },
      ),
    );
  }
}
