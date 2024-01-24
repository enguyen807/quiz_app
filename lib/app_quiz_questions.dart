import 'package:flutter/material.dart';

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
    // ignore: avoid_unnecessary_containers
    return Container(
      child: const Text('Quiz Questions'),
    );
  }
}
