import 'package:flutter/material.dart';
import 'package:flutter_fundamentls/navigation/forth_screen.dart';

class NavThirdScreen extends StatelessWidget {
  const NavThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text(
          'T H I R D S C R E E N',
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
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => const NavFourthScreen(),
              ),
              (route) => false);
        },
      ),
    );
  }
}
