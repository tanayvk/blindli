import 'package:flutter/material.dart';
import 'package:blindli/lichess.dart';

class HomeScreen extends StatefulWidget {
    @override
    State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

    Future<String> username;

    @override
    void initState() {
        super.initState();
        username = lichessGetName();
    }

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            body: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                    FutureBuilder<String> (
                        future: username,
                        builder: (context, snapshot) {
                            if (snapshot.hasData)
                                return Text("${snapshot.data}");
                            else if (snapshot.hasError)
                                return Text("${snapshot.error}");

                            return CircularProgressIndicator();
                        },
                    ),
                    RaisedButton(
                        child: Text('New Game'),
                        onPressed: () {
                            Navigator.pushReplacementNamed(context, '/newgame');
                        },
                    )
                ]
            )
        );
    }
}
