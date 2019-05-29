import 'package:flutter/material.dart';
import 'package:ht_chat_app/chatscreen.dart';


class HomePage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("HT Chat App"),
        ),
        body: new ChatScreen()
    );
  }
}