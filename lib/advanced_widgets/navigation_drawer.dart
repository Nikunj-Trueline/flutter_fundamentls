import 'package:flutter/material.dart';

class NavigationDrawerWidget extends StatefulWidget {
  const NavigationDrawerWidget({super.key});

  @override
  State<NavigationDrawerWidget> createState() => _NavigationDrawerWidgetState();
}

class _NavigationDrawerWidgetState extends State<NavigationDrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      drawer: Drawer(
        child: ListView(
          children: const [
            UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  // color: Colors.deepPurple,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                    alignment: Alignment.topLeft,
                      image: NetworkImage('https://img.freepik.com/premium-vector/avatar-profile-icon_188544-4755.jpg'))
                ),
                accountName: Text("N I K U N J P A T E L ",style: TextStyle(color: Colors.black)), accountEmail: Text("nikkunjpatel123@gmail.com",style: TextStyle(color: Colors.black))),
            ListTile(

              title: Text("Home Screen",style: TextStyle(color: Colors.black)),

            ),
            ListTile(

              title: Text("Setting Screen",style: TextStyle(color: Colors.black)),

            ),
            ListTile(

              title: Text("logout ",style: TextStyle(color: Colors.black)),

            ),
          ],
        ),
      ),
    );
  }
}
