class QuizModel {
  String question;
  List<int> options;
  int answer;

  QuizModel(this.question, this.options, this.answer);
}

QuizModel quiz1 = QuizModel("Q1. 20+20/20-20=....?", [-18, 0, 1, 20], 2);
QuizModel quiz2 = QuizModel("Q2. 20+20/20-20x3=....?", [-54, -39, 20, 60], 1);
QuizModel quiz3 = QuizModel("Q3. 15x15/15x15-15=....?", [-15, -14, 0, 210], 3);
QuizModel quiz4 = QuizModel("Q4. 9+9-9/9x9-9=....?", [0, 1, 9, 18], 0);
QuizModel quiz5 =
    QuizModel("Q5. 7+7x(42/7-1)+7/7-7=....?", [36, 42, 50, 56], 0);
