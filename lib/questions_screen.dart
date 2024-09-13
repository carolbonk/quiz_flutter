import 'package:flutter/material.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen(super.key);

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('The question...', style: TextStyle(
            color: Colors.white,

          ),), 
          SizedBox(height: 30),
         Answer(),
         Answer(),
         Answer(),
         Answer(),

        ]
      ),
    );
  }
}
