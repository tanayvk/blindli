import 'package:flutter/material.dart';

import 'package:blindli/screens/home.dart';
import 'package:blindli/screens/game.dart';
import 'package:blindli/screens/newgame.dart';
import 'package:blindli/theme.dart';

void main() {
    runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Blindli',
        theme: appTheme,
        initialRoute: '/home',
        routes: {
          '/home': (context) => HomeScreen(),
          '/game': (context) => GameScreen(),
          '/newgame': (context) => NewGameScreen(),
        },
    );
  }
}

