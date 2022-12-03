import 'package:flutter/material.dart';
import 'package:quiz_game/quiz_game_1/model/quiz_model.dart';
import 'package:quiz_game/quiz_game_1/quiz_welcome_screen.dart';

class QuizGameScreen extends StatefulWidget {
  const QuizGameScreen({super.key});

  @override
  State<QuizGameScreen> createState() => _QuizGameScreenState();
}

class _QuizGameScreenState extends State<QuizGameScreen> {
  List options = [1, 2, 3, 4];
  List quizLists = [quiz1, quiz2, quiz3, quiz4, quiz5];
  QuizModel currentQuiz = quiz1;
  int currentQuizIndex = 0;

  optionsTaped(int index) {
    if (currentQuiz.answer == index) {
      setState(() {
        if (currentQuizIndex < (quizLists.length - 1)) {
          currentQuizIndex = currentQuizIndex + 1;
          currentQuiz = quizLists[currentQuizIndex];
        } else {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => QuizWelcomeScreen(
                        titleText: 'Thank You For Playing Dude🤟☺',
                        buttonText: 'Play Again',
                      )));
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        color: Colors.grey.withOpacity(0.4),
        child: Padding(
          padding: const EdgeInsets.only(top: 230.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(30)),
                  child: Column(
                    children: [QuestionsList(), OptionsList()],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Padding QuestionsList() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(5, 40, 5, 30),
      child: Text(
        currentQuiz.question,
        style: TextStyle(
          fontSize: 25.0,
          letterSpacing: 1.0,
          color: Colors.black,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  Container OptionsList() {
    return Container(
      height: 300,
      child: ListView.builder(
          itemCount: currentQuiz.options.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
              child: GestureDetector(
                onTap: () => optionsTaped(index),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade500,
                    borderRadius: BorderRadius.circular(20.0),
                    border: Border.all(
                      color: Colors.white54,
                      width: 1,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Text(
                      currentQuiz.options[index].toString(),
                      style: TextStyle(color: Colors.white, fontSize: 18.0),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
