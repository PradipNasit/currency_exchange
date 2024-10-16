import 'package:currency/model_api/ModelApi.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeViewsList extends StatelessWidget {
  final ModelApi modelApi;
   HomeViewsList({super.key, required this.modelApi});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(9),
      margin: EdgeInsets.all(6),
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.3),
        borderRadius: BorderRadius.circular(10)
      ),
      child: Row(
        children: [
          Text(modelApi.code.toString(),style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold ,color: Colors.white),),
          Spacer(),
          Text(modelApi.value!.toStringAsFixed(3).toString(),style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),)
        ],
      )
    );
  }
}
