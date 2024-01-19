import 'package:flutter/material.dart';

class FloatingActionButtonWidget extends StatelessWidget {
  const FloatingActionButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("DEFAULT BUTTON"),
                  FloatingActionButton(
                    onPressed: () {},
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("SMALL BUTTON"),
                  FloatingActionButton.small(
                    onPressed: () {},
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("LARGE BUTTON"),
                  FloatingActionButton.large(
                    onPressed: () {},
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("EXTENDED BUTTON"),
                  FloatingActionButton.extended(
                      onPressed: () {},
                      icon: Icon(Icons.camera_alt),
                      label: Text("CAMERA")),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
