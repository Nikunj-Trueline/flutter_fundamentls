import 'package:flutter/material.dart';
import 'package:flutter_fundamentls/data_pass_fruit/product_details.dart';

import 'model.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  static List<String> fruitname =['Apple','Banana','Mango','Orange','pineapple'];

  static List<String> url = ['https://www.applesfromny.com/wp-content/uploads/2020/05/Jonagold_NYAS-Apples2.png',
    'https://cdn.mos.cms.futurecdn.net/42E9as7NaTaAi4A6JcuFwG-1200-80.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/9/90/Hapus_Mango.jpg/220px-Hapus_Mango.jpg',
    'https://5.imimg.com/data5/VN/YP/MY-33296037/orange-600x600-500x500.jpg',
    'https://5.imimg.com/data5/GJ/MD/MY-35442270/fresh-pineapple-500x500.jpg'];



  final List<FruitDataModel> Fruitdata   = [
     FruitDataModel(fruitname[0], url[0] , '${fruitname[0]} is good for health.'),
     FruitDataModel(fruitname[1], url[1] , '${fruitname[1]} is good for health.'),
     FruitDataModel(fruitname[2], url[2] , '${fruitname[2]} is good for health.'),
     FruitDataModel(fruitname[3], url[3] , '${fruitname[3]} is good for health.'),
     FruitDataModel(fruitname[4], url[4] , '${fruitname[4]} is good for health.'),


  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Pass Data from ListView to next Screen'),),
        body: ListView.builder(
            itemCount: Fruitdata.length,
            itemBuilder: (context,index){
              return Card(
                child: ListTile(
                  title: Text(Fruitdata[index].name),
                  leading: SizedBox(
                    width: 50,
                    height: 50,
                    child: Image.network(Fruitdata[index].ImageUrl),
                  ),
                  onTap: (){
       Navigator.push(context, MaterialPageRoute(builder: (context) => FruitDetail(index: index, fruitDataModel:Fruitdata),));
                  },
                ),
              );
            }
        )
    );
  }
}