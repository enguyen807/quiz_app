import 'package:flutter/material.dart';

class AppAnswerButton extends StatelessWidget {
  const AppAnswerButton({
    super.key, 
    required this.answerText, 
    required this.onTap
  });

  final String answerText;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap, 
      child: Text(answerText),
    );
  }
}
