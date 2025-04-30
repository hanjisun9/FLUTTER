import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget{
  const ContainerWidget({super.key});

  @override
  Widget build (BuildContext context) {
    return Scaffold (
      body: Container(
        width: 400,
        height: 50,   
        margin: EdgeInsets.all (20), 
        padding: EdgeInsets.only(top: 50, left: 50, right: 50, bottom: 50),
        decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(15),
         color: Colors.blueGrey,
         boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 3,
            offset: Offset(0, 4),
              ),
            ],
          ),
      child: Text(
        'Ini akan dibungkus di dalam container, seperti sushi',
        style: TextStyle (backgroundColor: Colors.pinkAccent),
        ),
      ),
    );
  }
}
