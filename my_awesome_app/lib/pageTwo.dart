import 'package:flutter/material.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello world"),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {},  
          )
        ],
        backgroundColor: Colors.green[100],

      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "0",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            TextField(
              style: TextStyle(
                color: Colors.black
              ),
              decoration: InputDecoration(
                hintText: "Enter the amount USD: ",
                hintStyle: TextStyle(color: Colors.black54, fontWeight:  FontWeight.w200),
                prefixIcon: Icon(Icons.monetization_on),
                prefixIconColor: Colors.green,
                filled: true,
                fillColor: const Color.fromRGBO(227, 226, 226, 1),
                focusedBorder:OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.green,
                    width: 0.85,
                    style: BorderStyle.solid
                    ),
                  borderRadius:  BorderRadius.circular(30)
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
