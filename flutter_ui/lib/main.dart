import 'package:flutter/material.dart';
import 'package:flutter_ui/pages/text_cmp.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key);
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TextComponent(),
    );
  }
}