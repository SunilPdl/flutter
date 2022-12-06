import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_todo/features/My_Buttons.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSaved;
  VoidCallback onCancelled;
  DialogBox({
    super.key,
    required this.controller,
    required this.onSaved,
    required this.onCancelled,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.teal[400],
      content: Container(
        height: 150,
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          //Get user input ->Todo
          TextField(
            controller: controller,
            decoration: InputDecoration(
                border: OutlineInputBorder(), hintText: 'Add new Todo..'),
          ),

          //buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              // save button
              MyButtons(buttonText: 'save', onPressed: onSaved),

              const SizedBox(
                width: 10,
              ),

              // cancelled button
              MyButtons(buttonText: 'cancel', onPressed: onCancelled),
            ],
          )
        ]),
      ),
    );
  }
}
