import 'package:flutter/material.dart';
import 'package:miyka24/pages/home_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      initialRoute: '/',
      home: Center(child: HomePage()),
      );
  }
}
