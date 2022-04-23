import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(
    MaterialApp(
      home: BallPage(),
    ),
  );
}
class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF3C0C0FF),
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Center(child: Text('Ask Me Anything'),),
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballnumber=1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: (){
          setState(() {ballnumber= Random().nextInt(4)+1;},);
          print('I got clicked $ballnumber');
        },
        child: Image.asset('images/ball$ballnumber.png'),
      )

    );
  }
}