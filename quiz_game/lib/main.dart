import 'package:flutter/material.dart';
import 'package:quiz_game/quiz_game_1/quiz_welcome_screen.dart';

void main() {
  runApp(const QuizApp());
}

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quiz Game',
      home: QuizWelcomeScreen(
        titleText: 'Number Find Quiz',
        buttonText: 'Start Playing',
      ),
    );
  }
}
