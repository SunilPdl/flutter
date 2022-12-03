import 'package:flutter/material.dart';
import 'package:quiz_game/quiz_game_1/quiz_game_screen.dart';

class QuizWelcomeScreen extends StatelessWidget {
  final String titleText;
  final String buttonText;
  const QuizWelcomeScreen(
      {super.key, required this.titleText, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade600,
        title: const Text('Quiz Game',
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            )),
        centerTitle: true,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        color: Colors.grey.shade800,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Padding(
                padding: const EdgeInsets.only(top: 180.0),
                child: Text(
                  titleText,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 50.0,
                    color: Colors.grey.shade200,
                  ),
                ),
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 150.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => QuizGameScreen()));
                },
                child: Text(
                  buttonText,
                  style: TextStyle(
                    fontSize: 25.0,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25)))),
              ),
            )
          ],
        ),
      ),
    );
  }
}
