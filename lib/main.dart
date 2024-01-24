import 'package:flutter/material.dart';
import 'package:quiz_app/app_quiz.dart';

void main() {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppQuiz();
  }
}
