import 'package:flutter/material.dart';

class TextComponent extends StatelessWidget {
  const TextComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "This is my first text ",
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: (Color.fromRGBO(255, 0, 0, 1))),
          ),
          TextField(
            decoration: InputDecoration(
              // label:
              // Text(
              //   "Enter your name...",
              //   style: TextStyle(color: Colors.black),
              // ),
              // helperText: "Helper text...",

              hintText: "Enter your name",
              hintStyle: TextStyle(
                // color: Color.fromARGB(150, 69, 69, 69),
                color: Color.fromRGBO(69, 69, 69, 0.9),
                // color: Colors.black54,
              ),
              prefixIcon: Icon(Icons.people_alt_outlined),
              prefixIconColor: Color.fromRGBO(69, 69, 69, 0.9),

              // suffixIcon: Icon(Icons.people_alt_outlined),
              // suffixIconColor: Color.fromRGBO(69, 69, 69, 0.9),

              filled: true,
              fillColor: Colors.black26,
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 2.0,
                  style: BorderStyle.solid,
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}
