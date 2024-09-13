import 'package:flutter/material.dart'

class AnswerButton extends StatelessWidget {
  answerButton();

@override
Widget build (context) {
  return ElevatedButton(
            onPressed: () {}, 
            style: ElevatedButton.styleFrom(),
            child: const Text('Answer 1'),
  );
}
}