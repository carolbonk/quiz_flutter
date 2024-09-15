import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
              'assets/images/quiz-logo.png', 
              width: 300,
              color: const Color.fromARGB(150, 255, 255, 255),
                    ),

          // Other less efficient way to set up opacity: 
          // Opacity(
          //   opacity: 0.6,
          //   child: Image.asset(
          //     'assets/images/quiz-logo.png', 
          //     width: 300,
          //           ),
          // ),

        const SizedBox(height: 80),
        const Text(
          'Learn Flutter the fun way!', 
          style: TextStyle(
            color: Color.fromARGB(255, 229, 220, 250),
            fontSize: 24,
          ),
          ),
          const SizedBox(height: 30),
            OutlinedButton.icon(
              icon: Icon(Icons.arrow_right_alt),
              label: Text('Start Quiz'),
              onPressed: startQuiz,              
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,  
              ),
            ),
        ],
      ),
    );
  }
}
