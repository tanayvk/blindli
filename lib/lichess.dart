import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

final storage = FlutterSecureStorage();

String token;
String url = 'https://lichess.org/api/account';

Future<String> lichessGetName() async {
    final String token = await storage.read(key: 'token');
    final response = await http.get(
        url,
        headers: { "Authorization": "Bearer $token" },
    );

    if (response.statusCode == 200) {
        return json.decode(response.body)['username'];
    } else {
        throw Exception("$token");
    }
}
