import 'package:flutter/material.dart';

class ColumnRowWidget extends StatelessWidget {
  const ColumnRowWidget({super.key});

  @override
  Widget build (BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Icon(
                Icons.settings,
                size: 32,
              ),
              Text('Pengaturan'),
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.password,
                size: 32,
              ),
              Text("Ganti Password"),
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.phone,
                size: 32,
              ),
              Text('Hubungi Kami'),
            ],
          ),
        ],
      ),
    );
  }
}
