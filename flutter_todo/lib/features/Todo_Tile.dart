import "package:flutter/material.dart";
import 'package:flutter_slidable/flutter_slidable.dart';

class TodoTile extends StatelessWidget {
  final String todoName;
  final bool todoCompleted;
  Function(bool?)? onChanged;
  Function(BuildContext)? deleteTodo;

  TodoTile({
    super.key,
    required this.todoName,
    required this.todoCompleted,
    required this.onChanged,
    required this.deleteTodo,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, top: 20, right: 25),
      child: Slidable(
        endActionPane: ActionPane(motion: StretchMotion(), children: [
          SlidableAction(
            onPressed: deleteTodo,
            icon: Icons.delete,
            backgroundColor: Colors.red,
          ),
        ]),
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              //This is for checkbox
              Checkbox(
                value: todoCompleted,
                onChanged: onChanged,
                activeColor: Colors.black54,
              ),

              //This is for todos name
              Text(
                todoName,
                style: TextStyle(
                  fontSize: 20,
                  decoration: todoCompleted
                      ? TextDecoration.lineThrough
                      : TextDecoration.none,
                ),
              ),
            ],
          ),
          decoration: BoxDecoration(
              color: Colors.teal, borderRadius: BorderRadius.circular(10)),
        ),
      ),
    );
  }
}
