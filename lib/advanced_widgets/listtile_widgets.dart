import 'package:flutter/material.dart';

class ListTileWidgets extends StatefulWidget {
  const ListTileWidgets({super.key});

  @override
  State<ListTileWidgets> createState() => _ListTileWidgetsState();
}

class _ListTileWidgetsState extends State<ListTileWidgets> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Card(
            color: Colors.deepPurple,
            elevation: 40,
              shadowColor: Colors.black,
            child: ListTile(
               leading: CircleAvatar(
                 child: Text('N',style: TextStyle(color: Colors.white)),
               ),
              title: Text("N I K U N J P A T E L",style: TextStyle(color: Colors.white)),
              subtitle: Text("N I K U N J 1 2 3 @ G M A I L . C O M",  style: TextStyle(color: Colors.white),),
              trailing: Icon(Icons.delete,color: Colors.white,),
            ),
          ),
        ),
      ),
    );
  }
}
