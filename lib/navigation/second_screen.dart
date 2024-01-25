import 'package:flutter/material.dart';
import 'package:flutter_fundamentls/navigation/third_screen.dart';

class NavSecondScreen extends StatelessWidget {
  const NavSecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text(
          'S E C O N D S C R E E N',
          style: TextStyle(
            height: 30,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.navigate_next,
          size: 30,
        ),
        onPressed: () {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const NavThirdScreen(),
              ));
        },
      ),
    );
  }
}
