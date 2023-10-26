import 'package:flutter/material.dart';

class Screens extends StatelessWidget {
  const Screens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screens"),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Expanded(
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  "back",
                  style: TextStyle(fontSize: 30),
                )),
          ),
        ),
      ),
    );
  }
}
