import 'package:flutter/material.dart';

class PageViewBuilderWidgets extends StatefulWidget {
  const PageViewBuilderWidgets({super.key});

  @override
  State<PageViewBuilderWidgets> createState() => _PageViewBuilderWidgetsState();
}

class _PageViewBuilderWidgetsState extends State<PageViewBuilderWidgets> {

   List image = [
     "https://images.pexels.com/photos/1525612/pexels-photo-1525612.jpeg?auto=compress&cs=tinysrgb&w=400",
     "https://images.pexels.com/photos/1400249/pexels-photo-1400249.jpeg?auto=compress&cs=tinysrgb&w=400",
     "https://images.pexels.com/photos/2168974/pexels-photo-2168974.jpeg?auto=compress&cs=tinysrgb&w=400",
   ];
   
   List title = [
     'O N B O A R DI N G 1',
     'O N B O A R DI N G 2',
     'O N B O A R DI N G 3',
   ];

     int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          itemCount: image.length,
  //  reverse: true,
        physics: BouncingScrollPhysics(),
        pageSnapping: false,
     //   scrollDirection: Axis.vertical,
onPageChanged: (value) {
 setState(() {
   currentIndex = value;
 });
},
        itemBuilder: (context, index) {
        return SafeArea(
          child: Column(
            children: [
          Container(
            height: 500,
            width: double.infinity,
            color: Colors.blue,
            margin: EdgeInsets.all(20),
            child: Image.network(image[index],

            fit: BoxFit.fill),
          ),
              SizedBox(height: 20,),
              Text(title[index]),
              SizedBox(height: 20,),
              Text("T H A N K Y O U F O R V I S I T O U R A P P  L I C A T I O N"),

              SizedBox(height: 40,),
              Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Container(height: currentIndex == 0 ? 18: 15 ,width:  currentIndex == 0 ? 18: 15 ,decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color:  currentIndex == 0 ? Colors.blue.shade900: Colors.blue.shade100 ,
                ),),
                SizedBox(width: 20,),
                Container(height: currentIndex == 1 ? 18: 15,width: currentIndex == 0 ? 18: 15,decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color:currentIndex == 1 ? Colors.blue.shade900: Colors.blue.shade100,

                ),),
            SizedBox(width: 20,),
Container(height: currentIndex == 2 ? 18: 15,width: currentIndex == 2? 18: 15,decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: currentIndex == 2 ? Colors.blue.shade900: Colors.blue.shade100,

                ),)


              ],)
            ],
          ),
        );
      },),
    );
  }
}
