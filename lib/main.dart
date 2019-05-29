import 'package:flutter/material.dart';
import 'package:ht_chat_app/chatscreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: ChatScreen(),
    );
  }
}
