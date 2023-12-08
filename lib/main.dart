import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold (
          backgroundColor: Colors.blue,
          appBar: AppBar(
            title: Text('Ask Me Anything'),
            backgroundColor: Colors.blue[900],
          ),
          body: magicBall(),
        ),
      ),
    );
class magicBall extends StatefulWidget {
  const magicBall({super.key});

  @override
  State<magicBall> createState() => _magicBallState();
}

class _magicBallState extends State<magicBall> {
  int ballNum = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          setState(() {
            ballNum=Random().nextInt(5)+1;
          });
      }, child: Image(
        image: AssetImage('images/ball$ballNum.png'),
      ),
      ),
    );
  }
}