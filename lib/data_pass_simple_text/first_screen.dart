import 'package:flutter/material.dart';
import 'package:flutter_fundamentls/data_pass_simple_text/second_screen.dart';

class FirstScreenProjectDataPass extends StatelessWidget {
  FirstScreenProjectDataPass({super.key});

  final userName = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: TextFormField(
                controller: userName,
                decoration: const InputDecoration(border: OutlineInputBorder()),
              ),
            ),
            ElevatedButton(
              child: const Text('N E X T S C R E E N '),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SecondScreenProjectDataPass(dataFromPrevious: userName.text.toString()),
                    ));
              },
            ),
          ],
        ),
      )),
    );
    ;
  }
}
