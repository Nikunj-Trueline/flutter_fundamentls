import 'package:flutter/material.dart';
import 'package:flutter_fundamentls/navigation/second_screen.dart';

class NavFirstScreen extends StatelessWidget {
  const NavFirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text(
          'F I R S T S C R E E N ',
          style: TextStyle(
            fontSize: 30,
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
          // Navigator.push(
          //     context,
          //     MaterialPageRoute(
          //       builder: (context) => NavSecondScreen(),
          //     ));

          Navigator.pushNamed(context, 'second');
        },
      ),
    );
  }
}
