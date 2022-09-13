import 'package:flutter/material.dart';

import '/game_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Game Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const GamePage(),
    );
  }
}
