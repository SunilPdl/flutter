import "package:flutter/material.dart";

class MoneyConverter extends StatefulWidget {
  const MoneyConverter({super.key});

  @override
  State<MoneyConverter> createState() => _MoneyConverterState();
}

class _MoneyConverterState extends State<MoneyConverter> {
  late double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  convertFunction() {
    setState(() {
      result = double.parse(textEditingController.text) * 129;
    });
  }

  @override
  Widget build(BuildContext context) {
    const border = OutlineInputBorder(
      borderSide: BorderSide(
        width: 2.0,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.all(
        Radius.circular(50),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Money converter app',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w900,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              result.toString(),
              style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: (Color.fromRGBO(25, 25, 25, 1))),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              margin: const EdgeInsets.only(bottom: 20.0),
              child: TextField(
                controller: textEditingController,
                decoration: const InputDecoration(
                  hintText: "Enter your amount in USD",
                  hintStyle: TextStyle(
                    color: Color.fromRGBO(69, 69, 69, 0.9),
                  ),
                  prefixIcon: Icon(Icons.monetization_on_rounded),
                  prefixIconColor: Color.fromRGBO(69, 69, 69, 0.9),
                  filled: true,
                  fillColor: Colors.black26,
                  focusedBorder: border,
                  enabledBorder: border,
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: ElevatedButton(
                // onPressed: () {
                //   convertFunction();
                // },
                onPressed: convertFunction,
                style: TextButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  minimumSize: const Size(double.infinity, 60),
                ),
                child: const Text("Convert"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
