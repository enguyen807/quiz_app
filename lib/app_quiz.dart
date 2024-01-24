import 'package:flutter/material.dart';

import 'package:quiz_app/app_theme.dart';
import 'package:quiz_app/app_home.dart';

class AppQuiz extends StatefulWidget {
  const AppQuiz({super.key});

  @override
  State<AppQuiz> createState() {
    return _AppQuizState();
  }
}

class _AppQuizState extends State<AppQuiz> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Learn Estonian',
      theme: AppTheme().themeData,
      home: const Scaffold(
        body: AppHome(),
      ),
    );
  }
}