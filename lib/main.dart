import 'package:flutter/material.dart';
import 'package:quiz_app/app_quiz.dart';
import 'package:quiz_app/app_theme.dart';

void main() {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Learn Estonian',
      theme: AppTheme().themeData,
      home: const Scaffold(
        body: AppQuiz(),
      ),
    );
  }
}
