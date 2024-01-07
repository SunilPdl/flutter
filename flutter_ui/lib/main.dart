import 'package:flutter/material.dart';
import 'package:flutter_ui/pages/ui/listview-gridview/grid_view.dart';
// import 'package:flutter_ui/pages/money_converter.dart';
// import 'package:flutter_ui/pages/ui/listview-gridview/listView.dart';
// import 'package:flutter_ui/pages/text_cmp.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key);
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: MoneyConverter(),
      // home: ListViewExample(),
      home: GridViewExample(),
    );
  }
}
