import 'package:flutter/material.dart';

AppBar calculatorAppbar({required String title})
{
  return AppBar(
    title: Text(title),
    centerTitle: true,
  );
}