import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Card Widget',
      theme: ThemeData(
        primarySwatch: Colors.lime,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Card Widget Demo'),
        ),
        body:  const Center(
          child: Card(
            child: SizedBox(
              height: 300,
              width: 300,
            child: Center(
              child: Text("This is a Card")))),
            ),
          ),
    );
  }
}
