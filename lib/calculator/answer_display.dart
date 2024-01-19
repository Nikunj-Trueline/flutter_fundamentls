import 'package:flutter/material.dart';

Widget answerScreen({required String answer}) {
  return Expanded(
    child: Container(
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.orangeAccent.shade100,
          borderRadius: BorderRadius.circular(10)),
      alignment: Alignment.center,
      child:  Text(
        answer,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 40,
          fontWeight: FontWeight.w800,
        ),
      ),
    ),
  );
}
