import 'package:flutter/material.dart';

int value = 0;

void increment()
{
  value++;
}

void decrement()
{
  value--;
}

class TestClass extends StatefulWidget {
  const TestClass({super.key});

  @override
  State<TestClass> createState() => _TestClassState();
}

class _TestClassState extends State<TestClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
              onPressed: () {
               setState(() {
                 decrement();
               });
                 print(value);
              },
              child:const Icon(Icons.exposure_minus_1),
            ),
            Text("$value",style: const TextStyle(color: Colors.black,fontSize: 40,fontWeight: FontWeight.w600,),),
            ElevatedButton(
              onPressed: () {
             setState(() {
               increment();
             });
              },
              child: const Icon(Icons.plus_one),
            )
          ],
        ),
      ),
    );
  }
}
