import 'package:flutter/material.dart';
import './answer_button.dart';
import './models/quiz_question.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({
    super.key,
    required this.answerText,
    required this.onTap,
    });

  final String answerText;
  final VoidCallback onTap;

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  List<QuizQuestion> question = [];

  @override
  Widget build(context) {
    final currentQuestion = question[0];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin:const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, 
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
          Text(
            currentQuestion.text,
            style: const TextStyle(
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 30),
          ...currentQuestion.answers.map((answer) {
            return AnswerButton(
              answerText: answer, void const onTap(){});
          })
        
          // AnswerButton(
          //   onTap: () {},
          //   answerText: currentQuestions.answers[0], 
          //   ),
          // AnswerButton(
          //   onTap: () {},
          //   answerText: currentQuestions.answers[1], 
          //   ),
          // AnswerButton(
          //   onTap: () {},
          //   answerText: currentQuestions.answers[2],
          //   ),
          // AnswerButton(
          //   onTap: () {},
          //   answerText: currentQuestions.answers[3],
          //   ),
        ]),
      ),
    );
  }
}
