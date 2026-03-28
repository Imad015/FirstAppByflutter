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
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.yellow[200],
        appBar: AppBar(
          title: Text("this my first app"),
          backgroundColor: Colors.yellow,
          elevation: 0,
          leading: Icon(Icons.menu),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.logout))],
        ),
        body: Column(
          children: [
            Container(
              height: 300,
              width: 300,
              color: Colors.yellow[100],
            ),
            Container(
              height: 300,
              width: 300,
              color: Colors.yellow[200],
            ),
            Container(
              height: 300,
              width: 300,
              color: Colors.yellow[300],
            )
          ],
        )
      ),
    );
  }
}
