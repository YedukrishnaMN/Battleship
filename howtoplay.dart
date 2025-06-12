import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HowToPlayPage(),
    );
  }
}

class HowToPlayPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('How to Play Battleship'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            // Title
            Text(
              'Welcome to Battleship!',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),

            // Introduction
            Text(
              'Battleship is a strategic guessing game for two players. The goal is to sink all of your opponent\'s ships before they sink yours.',
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
            SizedBox(height: 20),

            // How to Play
            Text(
              'How to Play:',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
              ),
            ),
            SizedBox(height: 10),
            Text(
              '1. Each player sets up their fleet on their board by placing ships horizontally or vertically.\n'
                  '2. Players take turns guessing the location of the other players ships by clicking on thier  grid coordinates.\n'
                  '3. The left side of the board shows if ur guesses hit or missed.\n'
                  '4. Once a ship is completely hit, it is "sunk".\n'
                  '5. The game ends when one player sinks all of the opponents ships.'
                  '6 The main grid shows the guesses and its consequences respectively.',
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
            SizedBox(height: 20),

            // Game Rules
            Text(
              'Game Rules:',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
              ),
            ),
            SizedBox(height: 10),
            Text(
              '• Each player has a fleet consisting of different-sized ships.\n'
                  '• Players cannot move their ships once they are placed on the grid.\n'
                  '• The ships are placed on a 10x10 grid.\n'
                  '• The first player to sink all of the opponent\'s ships wins!',
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
            SizedBox(height: 20),

            // Victory Condition
            Text(
              'Victory Condition:',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'The first player to sink all of the opponent\'s ships wins the game!',
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
