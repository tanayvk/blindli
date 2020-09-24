import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return Directionality(
            textDirection: TextDirection.ltr,
            child: Container(
                color: Colors.black,
                child: MovesList(),
                alignment: Alignment.center
            )
        );
    }
}

class MovesList extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return ListWheelScrollView(
            itemExtent: 200,
            diameterRatio: 2.0,
            children: <Widget>[
                MoveItem(),
                MoveItem(),
                MoveItem(),
                MoveItem(),
                MoveItem(),
                MoveItem(),
                MoveItem(),
                MoveItem(),
                MoveItem(),
                MoveItem(),
            ],
        );
    }
}

class MoveItem extends StatelessWidget {
    final moveText = "1. e4 e5";
    @override
    Widget build(BuildContext context) {
        return Container(
            child: Text(moveText, style: TextStyle(color: Colors.white, fontSize: 60.0)),
            width: 300.0,
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 10.0),
            decoration: BoxDecoration(
                color: Colors.black,
                border: Border.all(color: Colors.blue, width: 5.0),
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
            )
        );
    }
}
