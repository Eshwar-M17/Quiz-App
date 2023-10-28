import 'package:flutter/material.dart';

// ignore: must_be_immutable
class StartScreen extends StatelessWidget {
  const StartScreen( this.startquiz, {super.key});
  final void Function()  startquiz;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 250,
          color: const Color.fromARGB(150, 236, 231, 231),
        ),
        const SizedBox(height: 30),
        const Text(
          style: TextStyle(
              color: Color.fromARGB(150, 255, 255, 255), fontSize: 20),
          "Learn Flutter The fun way!",
        ),
        const SizedBox(height: 30),
        OutlinedButton.icon(
          onPressed: () {
            startquiz();
          },
          icon: const Icon(Icons.arrow_right_alt_outlined),
          style: OutlinedButton.styleFrom(
              foregroundColor: const Color.fromARGB(255, 255, 255, 255)),
          label: const Text("Start Quiz"),
        )
      ],
    );
  }
}
