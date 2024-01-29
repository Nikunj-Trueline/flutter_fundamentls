import 'package:flutter/material.dart';
import 'model.dart';


class FruitDetail extends StatefulWidget {

  final List<FruitDataModel> fruitDataModel;
  int index;
  FruitDetail({Key? key, required this.index, required this.fruitDataModel}) : super(key: key);

  @override
  State<FruitDetail> createState() => _FruitDetailState();
}

class _FruitDetailState extends State<FruitDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.fruitDataModel[widget.index].name),),

      body: Column(
        children: [
          Image.network(widget.fruitDataModel[widget.index].ImageUrl),
          SizedBox(
            height: 10,
          ),
          Text(widget.fruitDataModel[widget.index].desc,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              FloatingActionButton(
                heroTag: "f1",
                onPressed: (){
                  setState(() {
                    if(widget.index!=0){
                      widget.index --;
                    }
                  });
                },
                child:Icon(Icons.arrow_back_ios) ,
              ),
              FloatingActionButton(
                heroTag: "f2",
                onPressed: (){
                  setState(() {
                    if(widget.index != widget.fruitDataModel.length-1){
                      widget.index ++;
                    }
                  });
                },
                child:Icon(Icons.arrow_forward_ios),
              ),
            ],
          ),
        ],
      ),
    );
  }
}