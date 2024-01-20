import 'package:flutter/material.dart';

void onPressed() {}

class AppHome extends StatelessWidget {
  const AppHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Image.asset(
              'assets/images/quiz-logo.png',
              scale: 2,
            ),
            const SizedBox(height: 20),
            const Text(
              'Learn Estonian the fun way!',
              style: TextStyle(fontSize: 24),
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
    );
  }
}
