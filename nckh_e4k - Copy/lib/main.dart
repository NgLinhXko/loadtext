import 'package:flutter/material.dart';
import 'package:nckh_e4k/UI/Words.dart';
void main() {
  runApp(const E4KApp());
}

class E4KApp extends StatelessWidget {
  const E4KApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E4K',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const E4KHomePage(title: 'E4K'),
    );
  }
}








