import 'package:flutter/material.dart';

class ListViewExample extends StatefulWidget {
  const ListViewExample({super.key});

  @override
  State<ListViewExample> createState() => _ListViewExampleState();
}

class _ListViewExampleState extends State<ListViewExample> {
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
  List<String> jobs = [
    'Software engineering',
    'Software engineering',
    'Software engineering',
    'Web development',
    'Web development',
    'System programming',
    'System programming',
    'System programming',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Example'),
        backgroundColor: Colors.black38,
      ),
      body: ListView.builder(
        itemCount: names.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: Icon(Icons.people),
              title: Text(names[index]),
              subtitle: Text(jobs[index]),
              trailing: Icon(Icons.people),
              onTap: () {
                print("${names[index]} was tapped");
              },
            ),
          );
        },
      ),
    );
  }
}
