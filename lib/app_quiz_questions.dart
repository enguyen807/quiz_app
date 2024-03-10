import 'package:flutter/material.dart';

import 'app_answer_button.dart';
import 'data/questions.dart';

class AppQuizQuestions extends StatefulWidget {
  const AppQuizQuestions({super.key});

  @override
  State<AppQuizQuestions> createState() {
    return _AppQuizQuestions();
  }
}

class _AppQuizQuestions extends State<AppQuizQuestions> {
  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[0];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: const TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            ...currentQuestion.getShuffledAnswers().map((answer) {
              return AppAnswerButton(answerText: answer, onTap: () {});
            }),
          ],
        ),
      ),
    );
  }
}
