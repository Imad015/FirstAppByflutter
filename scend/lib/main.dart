import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'first program',
      home: Scaffold(
        backgroundColor: Colors.blue[200],
        body: Center(
          child: Container(
            height: 10,
            width: 10,
            child: Text("hello world"),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(20  )


            ),
          ),
        ),
        appBar: AppBar(
          title: Text("hello world"),

        ),
      )
    );
  }
}
