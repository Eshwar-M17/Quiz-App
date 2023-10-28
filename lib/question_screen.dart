import 'package:flutter/material.dart';

const  space=15.0;

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text(
            style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255), fontSize: 20),
            "Question"),
        const SizedBox(
          height: space +20,
        ),
        FilledButton.tonal(onPressed: () {},style: FilledButton.styleFrom(fixedSize:const Size(200, 20) ), child: const Text("op1")),
        const SizedBox(
          height: space,
        ),
        FilledButton.tonal(onPressed: () {},style: FilledButton.styleFrom(fixedSize:const Size(200, 20) ), child: const Text("op2"),),
        const SizedBox(
          height: space,
        ),
        FilledButton.tonal(onPressed: () {},style: FilledButton.styleFrom(fixedSize:const Size(200, 20) ), child: const Text("op3"),),
        const SizedBox(
          height:space,
        ),
        FilledButton.tonal(onPressed: () {},style: FilledButton.styleFrom(fixedSize:const Size(200, 20) ), child: const Text("op4"),)
      ],
    );
  }
}
