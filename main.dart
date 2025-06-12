import 'package:flutter/material.dart';
import 'package:untitled/pages/game.dart';
import 'package:untitled/pages/home.dart';
import 'package:untitled/pages/howtoplay.dart';
import 'package:untitled/pages/result.dart';
import 'package:untitled/pages/game2.dart';



void main() => runApp(MaterialApp(
  routes: {
    '/': (context)=>Home(),
    '/howtoplay': (context)=>HowToPlayPage(),
    '/game': (context)=>Game(),
    '/game2':(context)=>Game2(),
    '/result': (context)=>Result(),
  },
));
