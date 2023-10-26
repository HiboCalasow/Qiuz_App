import 'package:flutter/material.dart';

class Results extends StatelessWidget {
  const Results({super.key, required this.answers, required this.falses});
  final int answers;
  final int falses;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text(
              "correct answers : $answers",
              style: TextStyle(fontSize: 40),
            ),
            Text(
              "falses answers : $falses",
              style: TextStyle(fontSize: 40),
            )
          ],
        ),
      ),
    );
  }
}
