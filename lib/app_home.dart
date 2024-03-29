import 'package:flutter/material.dart';

class AppHome extends StatelessWidget {
  const AppHome(this.startQuiz,{super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Image.asset(
            'assets/images/quiz-logo.png',
            scale: 2,
            opacity: const AlwaysStoppedAnimation(.7),
          ),
          const SizedBox(height: 20),
          const Text(
            'Learn Estonian the fun way!',
            style: TextStyle(fontSize: 24),
          ),
          const SizedBox(height: 20),
          ElevatedButton.icon(
            onPressed: startQuiz,
            icon: const Icon(Icons.arrow_forward_rounded),
            style: ElevatedButton.styleFrom(
              textStyle: const TextStyle(fontSize: 18),
            ),
            label: const Text('Start Quiz'),
          )
        ],
      ),
    );
  }
}
