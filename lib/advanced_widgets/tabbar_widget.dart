import 'package:flutter/material.dart';
import 'package:flutter_fundamentls/widgets/text_widget.dart';

import '../widgets/container_widget.dart';
import '../widgets/image_widget.dart';

class TabBarWidgets extends StatefulWidget {
  const TabBarWidgets({super.key});

  @override
  State<TabBarWidgets> createState() => _TabBarWidgetsState();
}

class _TabBarWidgetsState extends State<TabBarWidgets> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        initialIndex: 0,
        child: Scaffold(
      appBar: AppBar(
        title: Text("T A B B A R"),
        bottom: TabBar(
          indicatorColor: Colors.deepPurple,
            labelPadding: EdgeInsets.all(10)
            ,
          //  isScrollable: true,
            tabs: [
          Icon(Icons.menu),
          Icon(Icons.home),
          Icon(Icons.settings),

        ]),
      ),
          body: TabBarView(
              physics: BouncingScrollPhysics(),
              children: [
            ImageWidget(),
            ContainerWidget(),
            TextWidget()

          ]),
    ));
  }
}
