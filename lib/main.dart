// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:quiz_app/quetions.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // List<String> questions = [
  //   " Flutter is Best FrameWord in mobile application development",
  //   "flutter was ewleased 2817",
  //   "The structure of Flutter consists of three layers Upper layers ,Flutter engine ,Built-in service  ",
  //   "some important features of flutter Are Hot Reload windows",
  // ];
  // List<bool> answersList = [true, false, true, false];

  List<Question> questions = [
    Question(
        q: " Flutter is Best FrameWord in mobile application development",
        a: true),
    Question(q: "flutter was ewleased 2817", a: false),
    Question(
        q: "The structure of Flutter consists of three layers Upper layers ,Flutter engine ,Built-in service  ",
        a: false),
    Question(
        q: "some important features of flutter Are Hot Reload windows",
        a: false),
  ];

  int quetionsIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Column(
        children: [
          Expanded(
            flex: 5,
            child: Center(
              child: Text(
                questions[quetionsIndex].questionName!,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontSize: 27,
                    color: Colors.white,
                    letterSpacing: 2,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: const EdgeInsets.only(left: 22, right: 22),
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        final isCorrect = questions[quetionsIndex].questionName;

                        setState(() {
                          if (quetionsIndex < questions.length - 1) {
                            quetionsIndex++;
                          }
                        });
                        if (isCorrect == true) {
                          print("waa true");
                        } else {
                          print("waa false");
                        }
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.amber),
                      child: const Text(
                        "True",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                  ),
                ),
              ],
            ), 
          ),
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(left: 22, right: 22),
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        final isFalse = questions[quetionsIndex].questionAnswer;
                        setState(() {
                          if (quetionsIndex < questions.length - 1) {
                            quetionsIndex++;
                          }
                        });
                        if (isFalse == false) {
                          print("waa false");
                        } else {
                          print("waa true");
                        }
                      },
                      style:
                          ElevatedButton.styleFrom(backgroundColor: Colors.red),
                      child: const Text(
                        "False",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
