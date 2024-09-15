import 'package:flutter/material.dart';
import './questions_screen.dart';
import './start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
     activeScreen = 'questions- screen';
    });
  }    
  
  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(switchScreen);

    if(activeScreen == 'questions-screen') {
      screenWidget = const QuestionsScreen();
    }

    // Another way to build this logic is by using a Ternary expression:
    // final screenWidget = activeScreen == 'start-screen' 
    //       ? StartScreen(switchScreen)
    //       : const QuestionsScreen();

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 109, 34, 240),
                Color.fromARGB(255, 80, 46, 95),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}