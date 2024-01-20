import 'package:flutter/material.dart';
import 'package:quiz_app/app_theme.dart';
import 'package:quiz_app/app_home.dart';

void main() {
  runApp(const QuizApp());
}

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Learn Estonian',
      theme: AppTheme().themeData,
      home: const AppHome(),
    );
  }
}
