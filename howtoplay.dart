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
              '1.There is one main grid in the centre and a small grid in the left.\n'
              '2. There are 4 ships on the top, they are of length 3,2,2,3 respectively.\n'
              '3. Click on one of them and select the orientation of it by clicked on the arrow.\n'
              '4. Then place the ship where u want on the main grid by clicking there.\n'
              '5. After your done give the device to player2 and they repeat the process.\n'
              '6. Now start clicking on the main grid to guess the opponents ship locations.\n'
              '7. The damage to your ship will be seen on your main grid and ur guesses on the left grid.\n'
              '8. A blast represts you have guessed correct and a "x" represents a miss.\n'
              '9. Guess all the opponents ships to win.\n',
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
