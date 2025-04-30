import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text ("Image Widget"),
      ),
      body: Image.asset ('assets/images/song kang.jpg'),
    );
  }
}
