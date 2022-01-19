import 'dart:math';

import 'package:flutter/material.dart';

class MagicBallScreen extends StatefulWidget {
  const MagicBallScreen({Key? key}) : super(key: key);

  @override
  State<MagicBallScreen> createState() => _MagicBallScreenState();
}

class _MagicBallScreenState extends State<MagicBallScreen> {

  int ballIndex = 1;

  void changeBallNumber() {
    Random number = Random();

    setState(() {
      ballIndex = number.nextInt(5) + 1;
      print(ballIndex);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: const Text('Ask Me everything'),
      ),
      backgroundColor: Colors.white70,
      body: Center(
        child: TextButton(
          child: Image.asset('images/ball$ballIndex.png'),
          onPressed: changeBallNumber,
        ),
      ),
    );
  }
}
