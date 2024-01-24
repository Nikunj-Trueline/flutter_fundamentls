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
            height:  MediaQueryHelper.height * 500,
            width: MediaQueryHelper.width * 400,
            decoration:
            const BoxDecoration(
              gradient: RadialGradient(
                  stops: [
                    0.3,0.7,1.0
                  ],
                  colors: [
                    Color(0xFFFFFFFF),
                    Color(0xFFFFD54F),
                    Color(0xFFFFD600),
              ])
            ),
          ),
          Center(
            child: Image.asset('assets/images/1.png',
            height: 300,width: 300),
          ),
        ],
      )
    );
  }
}
