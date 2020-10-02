import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class GameScreen extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return SafeArea(
                child: Scaffold(
                    resizeToAvoidBottomInset: false,
                    body: Column(
                        children: <Widget>[
                            Container(
                                color: Colors.white,
                                child: MovesList(),
                                alignment: Alignment.center,
                                height: 500,
                            ),
                            Expanded(
                                child: Container(
                                    padding: EdgeInsets.all(10.0),
                                    alignment: Alignment.bottomCenter,
                                    child: MyCustomForm(),
                                )
                            ),
                            FlatButton(
                                child: Text('Back'),
                                onPressed: () {
                                    Navigator.pushReplacementNamed(context, '/home');
                                },
                            )
                        ]
                    )
            )
        );
    }
}

class MovesList extends StatefulWidget {
    @override
    _MovesListState createState() => _MovesListState();
}

class _MovesListState extends State<MovesList> {
    @override
    void initState() {
        super.initState();
    }

    @override
    Widget build(BuildContext context) {
        return ListWheelScrollView.useDelegate(
            itemExtent: 200,
            diameterRatio: 2.0,
            childDelegate: ListWheelChildBuilderDelegate(
                builder: (BuildContext _context, int i) {
                    if (i <= 0) return null;
                    return MoveItem("$i. e4 e5");
                }
            ),
        );
    }
}

class MoveItem extends StatelessWidget {
    final String _moveText;

    MoveItem(this._moveText);

    @override
    Widget build(BuildContext context) {
        return Container(
            child: Text(_moveText, style: TextStyle(color: Colors.black, fontSize: 60.0)),
            width: 300.0,
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 10.0),
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.black, width: 5.0),
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
            )
        );
    }
}

class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

class MyCustomFormState extends State<MyCustomForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: 
      TextFormField(
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
    );
  }
}
