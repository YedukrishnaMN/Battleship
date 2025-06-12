import 'package:flutter/material.dart';

class Result extends StatefulWidget {
  const Result({super.key});

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  Map e={};
  int? p;
  @override

  Widget build(BuildContext context) {
    final arguments=ModalRoute.of(context)!.settings.arguments;
    e=arguments as Map;
    p=e['p'];
    return Scaffold(
      appBar: AppBar(
        title: Text('Winner Page'),
        backgroundColor: Colors.purple,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue, Colors.green, Colors.pink, Colors.yellow],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.1, 0.3, 0.6, 1],
          ),
        ),
        child: Center(
          child: Text(
            'Player $p is the Winner!',
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              shadows: [
                Shadow(
                  blurRadius: 10.0,
                  color: Colors.black,
                  offset: Offset(3.0, 3.0),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}