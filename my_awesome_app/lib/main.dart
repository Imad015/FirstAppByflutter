import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_awesome_app/currency_converter_cupertino_page.dart';
import 'package:my_awesome_app/currency_converter_material_page.dart';

void main() {
  runApp(MyCupertinoApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CurrencyConverterMaterialPage(),
    );
  }
}

class MyCupertinoApp extends StatelessWidget {
  const MyCupertinoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: CurrencyConverterCupertinoPage(),
    );
  }
}
