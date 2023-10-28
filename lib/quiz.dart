import 'package:flutter/material.dart';
import 'package:quiz_app/question_screen.dart';
import 'package:quiz_app/start_screen.dart';

var startalignment = Alignment.topRight;
var endalignment = Alignment.bottomRight;
const List<Color> colorlist = [
  Color.fromARGB(255, 18, 3, 80),
  Color.fromARGB(255, 18, 7, 101),
];

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}
var activescreen ="start-screen";
class _QuizState extends State<Quiz> {
  
  

  
  void startQuiz() {
    setState(() {
      activescreen = "question-screen";
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: colorlist, begin: startalignment, end: endalignment),
          ),
          child: Center(child: activescreen=="start-screen"?StartScreen(startQuiz):const QuestionScreen()),
        ),
      ),
    );
  }
}
