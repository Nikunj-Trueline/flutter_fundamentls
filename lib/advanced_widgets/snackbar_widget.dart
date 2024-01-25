import 'package:flutter/material.dart';

class SnackBarWidget extends StatefulWidget {
  const SnackBarWidget({super.key});

  @override
  State<SnackBarWidget> createState() => _SnackBarWidgetState();
}

class _SnackBarWidgetState extends State<SnackBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: IconButton(onPressed: () {
           setState(() {

             SnackBar snackBar = const SnackBar(
               content: Text("T H A N K Y O U..",style: TextStyle(color: Colors.black,fontSize: 20),),
             backgroundColor: Colors.amber,
               elevation: 20,
              behavior: SnackBarBehavior.floating,
               duration: Duration(seconds: 5),
               shape: RoundedRectangleBorder(),
             );

             ScaffoldMessenger.of(context).showSnackBar(snackBar);
           });
        }, icon: const Icon(Icons.add_alert,size: 50,))
      ),
    );
  }
}
