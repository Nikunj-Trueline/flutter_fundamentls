import 'package:flutter/material.dart';
import 'package:flutter_fundamentls/mediaquery/mediaquery_helper.dart';

class SplashScreenFreshFruit extends StatefulWidget {
  const SplashScreenFreshFruit({super.key});

  @override
  State<SplashScreenFreshFruit> createState() => _SplashScreenFreshFruitState();
}

class _SplashScreenFreshFruitState extends State<SplashScreenFreshFruit> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height:  MediaQueryHelper.height * double.infinity,
            width: MediaQueryHelper.width * double.infinity,
            decoration:
            const BoxDecoration(
              gradient: RadialGradient(
                  stops: [
                    0.2,0.5,1.0
                  ],
                  colors: [
                    Color(0xFFFFFFFF),
                    Color(0xFFFFF8E1),
                    Color(0xFFFFD54F),

              ])
            ),
          ),
          Center(
            child: Image.asset('assets/images/1.png',
            height: 350,width: 350),
          ),
        ],
      )
    );
  }
}
