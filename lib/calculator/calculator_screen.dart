import 'package:flutter/material.dart';
import 'answer_display.dart';
import 'custom_appbar.dart';
import 'custom_sizebox.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  String answer = "";
  String first = "";
  String second = "";

  int counter = 0;

  String exceptionMessage = "Can't divide by zero";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: calculatorAppbar(title: 'C A L C U L A T O R'),
      body: Column(
        children: [
          answerScreen(answer: answer),
          Row(
            children: [
              operativeButton(operator: 'AC'),
              operativeButton(operator: '+'),
              operativeButton(operator: '-'),
              operativeButton(operator: '/'),
            ],
          ),
          Row(
            children: [
              numericButton(number: '7'),
              numericButton(number: '8'),
              numericButton(number: '9'),
              operativeButton(operator: '+'),
            ],
          ),
          Row(
            children: [
              numericButton(number: '4'),
              numericButton(number: '5'),
              numericButton(number: '6'),
              operativeButton(operator: '-'),
            ],
          ),
          Row(
            children: [
              numericButton(number: '1'),
              numericButton(number: '2'),
              numericButton(number: '3'),
              operativeButton(operator: '*'),
            ],
          ),
          Row(
            children: [
              numericButton(number: '0'),
              numericButton(number: '.'),
              operativeButton(operator: '='),
            ],
          ),
          customSizeBox(height: 20),
        ],
      ),
    );
  }

  Widget numericButton({required String number}) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 0),
        child: FloatingActionButton(
          onPressed: () {
            setState(() {

              if(answer==exceptionMessage)
                {
                  answer= "";
                }

              answer = "$answer$number";
            });
          },
          backgroundColor: Colors.black38,
          child: Text(
            number,
            style: const TextStyle(
                fontWeight: FontWeight.w700, fontSize: 30, color: Colors.black),
          ),
        ),
      ),
    );
  }

  Widget operativeButton({required String operator}) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 0),
        child: FloatingActionButton(
          onPressed: () {
            setState(() {
              if (operator == 'AC') {
                answer = "";
              }
              if (operator == '+') {
                first = answer;
                answer = "";
                counter = 1;
              } else if (operator == '-') {
                first = answer;
                answer = "";
                counter = 2;
              } else if (operator == '*') {
                first = answer;
                answer = "";
                counter = 3;
              } else if (operator == '/') {
                first = answer;
                answer = "";
                counter = 4;
              } else if (operator == '=') {
                second = answer;

                double c = 0;

                double a = double.parse(first);
                double b = double.parse(second);

                if (counter == 1) {
                  c = a + b;
                  answer = c.toString();
                } else if (counter == 2) {
                  c = a - b;
                  answer = c.toString();
                } else if (counter == 3) {
                  c = a * b;
                  answer = c.toString();
                }else if(counter==4)
                  {
                   if(b==0)
                     {
                       answer = exceptionMessage;
                     }
                    else{
                     c = a / b;
                     answer = c.toString();
                   }

                  }
              }
            });
          },
          backgroundColor: Colors.orangeAccent,
          child: Text(
            operator,
            style: const TextStyle(
                fontWeight: FontWeight.w700, fontSize: 30, color: Colors.black),
          ),
        ),
      ),
    );
  }
}
