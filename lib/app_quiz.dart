import 'package:flutter/material.dart';
import 'package:quiz_app/app_home.dart';
import 'package:quiz_app/app_quiz_questions.dart';

class AppQuiz extends StatefulWidget {
  const AppQuiz({super.key});

  @override
  State<AppQuiz> createState() {
    return _AppQuizState();
  }
}

class _AppQuizState extends State<AppQuiz> {
  Widget? activeScreen;

  @override
  void initState() {
    activeScreen = AppHome(switchScreen);
    super.initState();
  }

  void switchScreen() {
    setState(() {
      activeScreen = const AppQuizQuestions();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: activeScreen,
      );
  }
}