import 'package:flutter/material.dart';
import 'package:flutter_fundamentls/practical_example/stateless_stateful_dif.dart';
import 'package:flutter_fundamentls/widgets/card_widget.dart';
import 'package:flutter_fundamentls/widgets/center_widget.dart';
import 'package:flutter_fundamentls/widgets/circleavtar_widget.dart';
import 'package:flutter_fundamentls/widgets/colors.dart';
import 'package:flutter_fundamentls/widgets/column_widget.dart';
import 'package:flutter_fundamentls/widgets/expanded_widget.dart';
import 'package:flutter_fundamentls/widgets/image_widget.dart';
import 'package:flutter_fundamentls/widgets/row_widget.dart';
import 'package:flutter_fundamentls/widgets/safearea_widget.dart';
import 'package:flutter_fundamentls/widgets/sizeBox_widget.dart';
import 'package:flutter_fundamentls/widgets/stack_widget.dart';
import 'package:flutter_fundamentls/widgets/text_widget.dart';
import 'package:flutter_fundamentls/widgets/icon_Widget.dart';
import 'package:flutter_fundamentls/widgets/wrap_widget.dart';

import 'advanced_widgets/listtile_widgets.dart';
import 'advanced_widgets/listview.dart';
import 'advanced_widgets/listview_builder.dart';
import 'advanced_widgets/snackbar_widget.dart';
import 'advanced_widgets/tabbar_widget.dart';
import 'buttons/elevated_button.dart';
import 'buttons/floating_action_buttons.dart';
import 'buttons/icon_button.dart';
import 'buttons/text_button.dart';
import 'calculator/calculator_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: CalculatorScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, });

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".



  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("THANK YOU"),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
