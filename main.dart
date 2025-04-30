import 'package:flutter/material.dart';
import 'package:putu/cobaScaffold.dart';
import 'package:putu/container.dart';
import 'package:putu/icon.dart';
import 'package:putu/image.dart';
import 'package:putu/sizedbox.dart';
import 'package:putu/text.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
    return MaterialApp(
      title: "Modul Material App",
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      darkTheme: ThemeData(primarySwatch: Colors.green),
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      home: SizedBoxWidget()
    );
  }
}

class Counter extends StatefulWidget {
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _counter = 0;

  @override
  Widget build (BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Orang sabar, Rezekinya lancar')),
      body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '$_counter',
               style: TextStyle(fontSize: 40),
          ),
           SizedBox(height: 20),
          ElevatedButton(
            style: ElevatedButton .styleFrom(
              backgroundColor: Theme.of(context).primaryColor,
              foregroundColor: Colors.white,
            ),
            onPressed: () {
              setState((){
                _counter++;
              });
            },
            child: Text ('Coba dipencet deh!'),
          ),
        ],
      ),
 ),
 );
}
}
