import 'package:flutter/material.dart';

void main() {
  runApp(const QuizApp());
}

void onPressed() {}

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.green.shade300,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            shape: MaterialStatePropertyAll<OutlinedBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
            ),
            foregroundColor:
                const MaterialStatePropertyAll<Color>(Colors.white),
            backgroundColor: MaterialStateProperty.resolveWith<Color?>(
              (Set<MaterialState> states) {
                if (states.contains(MaterialState.pressed)) {
                  return Colors.pink.shade100;
                }
                return Colors.pink.shade300; // Use the component's default.
              },
            ),
          ),
        ),
      ),
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
