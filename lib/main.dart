import 'package:flutter/material.dart';
import 'package:quiz_app/app_theme.dart';

void main() {
  runApp(const QuizApp());
}

void onPressed() {}

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme().themeData,
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/images/quiz-logo.png',
                width: 350,
              ),
              const SizedBox(height: 20),
              const Text(
                'Learn Estonian the fun way!',
                style: TextStyle(fontSize: 26, color: Colors.white),
              ),
              const SizedBox(height: 20),
              const ElevatedButton(
                onPressed: onPressed,
                child: Text(
                  'Start Quiz',
                  style: TextStyle(fontSize: 18),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
