import 'package:flutter/material.dart';

class GridViewExample extends StatefulWidget {
  const GridViewExample({super.key});

  @override
  State<GridViewExample> createState() => _GridViewExampleState();
}

class _GridViewExampleState extends State<GridViewExample> {
  List<String> names = [
    'Hari',
    'Ram',
    'Mady',
    'Emma',
    'Rima',
    'Sima',
    'Anil',
    'Sunil',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid View'),
      ),
      body: GridView.builder(
        itemCount: names.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (context, index) {
          return Card(
            child: Center(
              child: Text(names[index]),
            ),
          );
        },
      ),
    );
  }
}
