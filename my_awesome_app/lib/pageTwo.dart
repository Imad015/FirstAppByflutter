import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class PageTwo extends StatefulWidget {
  const PageTwo({super.key});
  @override
  State<PageTwo> createState() => _PageTwo();
}

class _PageTwo extends State<PageTwo> {
  double result = 0;
    final TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderSide: const BorderSide(
        color: Colors.green,
        width: 0.85,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.circular(30),
    );
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "USD",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
        elevation: 30,
        actions: <Widget>[
          IconButton(icon: const Icon(Icons.menu), onPressed: () {}),
        ],
        backgroundColor: Colors.green[100],
        leading: const Icon(Icons.abc),
      ),
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 50),
              child: Text(
                result.toString(),

                style: const TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),

              child: TextField(
                controller: textEditingController,
                onSubmitted: (value) {
                  print(value);
                },
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
                style: TextStyle(color: const Color.fromRGBO(0, 0, 0, 1)),
                decoration: InputDecoration(
                  hintText: "Enter the amount USD: ",
                  hintStyle: const TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.w200,
                  ),
                  prefixIcon: const Icon(Icons.monetization_on),
                  prefixIconColor: Colors.green,
                  filled: true,
                  fillColor: const Color.fromRGBO(227, 226, 226, 1),
                  focusedBorder: border,
                  enabledBorder: border,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    result = double.parse((double.parse(textEditingController.text) * 133.32).toStringAsFixed(2));
                  });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(227, 226, 226, 1),
                  foregroundColor: Colors.black,
                  minimumSize: Size(double.infinity, 50),
                  elevation: 5,
                ),
                child: const Text("Convert"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
