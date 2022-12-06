import 'package:flutter/material.dart';
import 'package:flutter_todo/pages/home_screen.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  //Hive init
  await Hive.initFlutter();

  //open a box
  var box = await Hive.openBox('mybox');

  runApp(const MyTodoApp());
}

class MyTodoApp extends StatelessWidget {
  const MyTodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(primarySwatch: Colors.teal),
    );
  }
}
