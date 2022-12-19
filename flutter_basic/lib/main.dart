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
      home: Scaffold(
        drawer: Drawer(
          child: ListView(
            children: [
              ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
              ),
              ListTile(
                leading: Icon(Icons.mail),
                title: Text("Gmail"),
              ),
              ListTile(
                leading: Icon(Icons.notifications),
                title: Text("Notifications"),
              ),
              ListTile(
                leading: Icon(Icons.call),
                title: Text("Phone"),
              ),
              ListTile(
                leading: Icon(Icons.face_outlined),
                title: Text("Profile"),
              ),
              ListTile(
                leading: Icon(Icons.sailing),
                title: Text("Sailing"),
              ),
              ListTile(
                leading: Icon(Icons.hail_outlined),
                title: Text("Hail_outlined"),
              ),
              ListTile(
                leading: Icon(Icons.search),
                title: Text("Search"),
              ),
              ListTile(
                leading: Icon(Icons.wallet),
                title: Text("Wallet"),
              ),
              ListTile(
                leading: Icon(Icons.face),
                title: Text("Face"),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("Settings"),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          // leading: Icon(Icons.home),
          title: Text('F basic'),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.home)),
            IconButton(onPressed: () {}, icon: Icon(Icons.mail)),
            IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
            IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
          ],
        ),
      ),
    );
  }
}
