import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class NewGameScreen extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return SafeArea(
                child: Scaffold(
                    resizeToAvoidBottomInset: false,
                    body: Text("hello"),
            )
        );
    }
}
