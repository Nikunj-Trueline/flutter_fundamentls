import 'package:flutter/cupertino.dart';

class MediaQueryHelper{

  static double height = 0.0;
  static double width = 0.0;

  static void onInit({required BuildContext context})
  {
    height = MediaQuery.of(context).size.height /1000;
    width = MediaQuery.of(context).size.width /1000;
  }
}