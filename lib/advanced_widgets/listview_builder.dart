import 'package:flutter/material.dart';

class UserDetails{

  String nameFirstCharacter;
  String userName;
  String userEmail;

  UserDetails({ required this.nameFirstCharacter,required this.userName,required this.userEmail});
}

List<UserDetails> UserData = [
  UserDetails(nameFirstCharacter: 'N', userName: 'N I K U N J P A T E L', userEmail: "N I K U N J 1 2 3 @ G M A I L . C O M"),
  UserDetails(nameFirstCharacter: 'P', userName: 'P R I Y A N K ', userEmail: "P R I Y A N K 1 2 3 @ G M A I L . C O M "),
  UserDetails(nameFirstCharacter: 'N', userName: 'N I K U N J P A T E L', userEmail: "N I K U N J 1 2 3 @ G M A I L . C O M"),
  UserDetails(nameFirstCharacter: 'P', userName: 'P R I Y A N K ', userEmail: "P R I Y A N K 1 2 3 @ G M A I L . C O M "),
];

class ListViewBuilderWidget extends StatefulWidget {
  const ListViewBuilderWidget({super.key});

  @override
  State<ListViewBuilderWidget> createState() => _ListViewBuilderWidgetState();
}

class _ListViewBuilderWidgetState extends State<ListViewBuilderWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: UserData.length,
        itemBuilder: (context, index) {
          return  Padding(
            padding: EdgeInsets.all(10),
            child: Card(
              color: Colors.deepPurple,
              elevation: 40,
              shadowColor: Colors.black,
              child: ListTile(
                leading: CircleAvatar(
                  child: Text(UserData[index].nameFirstCharacter,style: TextStyle(color: Colors.white)),
                ),
                title: Text(UserData[index].userName,style: TextStyle(color: Colors.white)),
                subtitle: Text(UserData[index].userEmail,  style: TextStyle(color: Colors.white),),
                trailing: Icon(Icons.delete,color: Colors.white,),
              ),
            ),
          );
        },
      ),
    );
  }
}
