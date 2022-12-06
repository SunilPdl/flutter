import 'package:flutter/material.dart';
import 'package:flutter_todo/datas/Database.dart';
import 'package:flutter_todo/features/Dialog_Box.dart';
import 'package:flutter_todo/features/Todo_Tile.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //reference the hive
  final _mybox = Hive.box('mybox');
  todoDatabase db = todoDatabase();

  @override
  void initState() {
    //if this is the first time ever opening this app then create default datas
    if (_mybox.get('TODOLISTS') == null) {
      db.createInitialData();
    } else {
      //if there already exists datas then
      db.loadData();
    }
    super.initState();
  }

  //text controller
  final _controller = TextEditingController();

  // all todos
  // List todoLists = [
  //   ['hellow world!', false],
  //   ['function!', false],
  // ];

  // if checkbox was tapped
  void changeCheckbox(bool? value, int index) {
    setState(() {
      db.todoLists[index][1] = !db.todoLists[index][1];
    });
    db.updateDatabase();
  }

  //save todo
  void saveTodo() {
    setState(() {
      db.todoLists.add([_controller.text, false]);
      _controller.clear();
    });
    Navigator.of(context).pop();
    db.updateDatabase();
  }

  //todo delete function
  void deleteFunction(int index) {
    setState(() {
      db.todoLists.removeAt(index);
    });
    db.updateDatabase();
  }

  //create new todo
  void createNewTodo() {
    showDialog(
      context: context,
      builder: (context) {
        return DialogBox(
          controller: _controller,
          onSaved: saveTodo,
          onCancelled: () => Navigator.of(context).pop(),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[300],
      appBar: AppBar(
        title: Center(child: Text('TO-DO')),
        elevation: 0, //remove shadow
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          createNewTodo();
        },
        child: Icon(Icons.add),
      ),
      body: ListView.builder(
        itemCount: db.todoLists.length,
        itemBuilder: (context, index) {
          return TodoTile(
            todoName: db.todoLists[index][0],
            todoCompleted: db.todoLists[index][1],
            onChanged: (value) => changeCheckbox(value, index),
            deleteTodo: (context) => deleteFunction(index),
          );
        },
      ),
    );
  }
}
