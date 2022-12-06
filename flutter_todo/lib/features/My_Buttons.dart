import 'package:flutter/material.dart';

class MyButtons extends StatelessWidget {
  final String buttonText;
  // final Function onPressed;
  VoidCallback onPressed;
  MyButtons({super.key, required this.buttonText, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: Theme.of(context).primaryColor,
      child: Text(buttonText),
    );
  }
}
