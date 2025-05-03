import 'package:flutter/material.dart';

class GridViewWidget extends StatelessWidget {
  const GridViewWidget({super.key});

  @override
  Widget build (BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text ('Ini Grid View'),
        backgroundColor: Colors.pinkAccent,
      ),
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
      children: [
        Image.network('https://picsum.photos/250?image=1'),
        Image.network('https://picsum.photos/250?image=2'),
        Image.network('https://picsum.photos/250?image=3'),
        Image.network('https://picsum.photos/250?image=4'),
        Image.network('https://picsum.photos/250?image=5'),
        Image.network('https://picsum.photos/250?image=6'),
      ],
     ),
    );
  }
}
