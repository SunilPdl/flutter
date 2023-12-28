import 'package:flutter/material.dart';

class TextComponent extends StatelessWidget {
  const TextComponent({super.key});

  @override
  Widget build(BuildContext context) {
    int result = 0;
    final TextEditingController textEditingController = TextEditingController();
    final border = OutlineInputBorder(
      borderSide: BorderSide(
        width: 2.0,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.all(Radius.circular(50)),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('Text Component'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "This is my first text ",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: (Color.fromRGBO(255, 0, 0, 1))),
            ),
            Container(
              //if only padding property is required then we used Padding
              // padding: const EdgeInsets.all(8.0),
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              margin: const EdgeInsets.only(bottom: 20.0),
              child: TextField(
                controller: textEditingController,
                decoration: InputDecoration(
                  // label:
                  // Text(
                  //   "Enter your name...",
                  //   style: TextStyle(color: Colors.black),
                  // ),
                  // helperText: "Helper text...",

                  hintText: "Enter your name",
                  hintStyle: const TextStyle(
                    // color: Color.fromARGB(150, 69, 69, 69),
                    color: Color.fromRGBO(69, 69, 69, 0.9),
                    // color: Colors.black54,
                  ),
                  prefixIcon: const Icon(Icons.people_alt_outlined),
                  prefixIconColor: const Color.fromRGBO(69, 69, 69, 0.9),

                  // suffixIcon: Icon(Icons.people_alt_outlined),
                  // suffixIconColor: Color.fromRGBO(69, 69, 69, 0.9),

                  filled: true,
                  fillColor: Colors.black26,
                  // focusedBorder: OutlineInputBorder(
                  //   borderSide: BorderSide(
                  //     width: 2.0,
                  //     style: BorderStyle.solid,
                  //   ),
                  //   borderRadius: BorderRadius.all(Radius.circular(50)),
                  // borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                  // borderRadius: BorderRadius.circular(60);
                  //The constructor being called isn't a const constructor.Try removing 'const' from the constructor -> remove parent const and adding const only to child
                  focusedBorder: border,
                  enabledBorder: border,
                ),
                keyboardType: TextInputType.number,
                // keyboardType: TextInputType.numberWithOptions(
                //   decimal: true,
                //   signed: true,
                // ),
              ),
            ),
            //Normal/Flat button
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 10.0),
            //   child: TextButton(
            //     onPressed: () {
            //       debugPrint("Button clicked");
            //     },
            //     style: const ButtonStyle(
            //       backgroundColor: MaterialStatePropertyAll(Colors.black),
            //       foregroundColor: MaterialStatePropertyAll(Colors.white),
            //       minimumSize: MaterialStatePropertyAll(
            //         Size(double.infinity, 60),
            //       ),
            //     ),
            //     child: const Text("Click me"),
            //   ),
            // ),

            // Eleveted/Raised button
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 10.0),
            //   child: ElevatedButton(
            //     onPressed: () {
            //       debugPrint("Button clicked");
            //     },
            //     style: const ButtonStyle(
            //       backgroundColor: MaterialStatePropertyAll(Colors.black),
            //       foregroundColor: MaterialStatePropertyAll(Colors.white),
            //       minimumSize: MaterialStatePropertyAll(
            //         Size(double.infinity, 60),
            //       ),
            //       // elevation: MaterialStatePropertyAll(6),
            //       // shape: MaterialStatePropertyAll(CircleBorder()),
            //     ),
            //     child: const Text("Click me"),
            //   ),
            // ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: ElevatedButton(
                onPressed: () {
                  print(textEditingController.text);
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  minimumSize: const Size(double.infinity, 60),
                ),
                child: const Text("Click me"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
