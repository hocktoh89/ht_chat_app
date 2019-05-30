//import 'package:flutter/material.dart';
////import 'package:ht_chat_app/chatscreen.dart';
//
//void main() => runApp(MyApp());
//
//class MyApp extends StatelessWidget {
//  // This widget is the root of your application.
//  @override
//  Widget build(BuildContext context) {
//    return new MaterialApp(
////      home: ChatScreen(),
//    );
//  }
//}
//
//

import 'package:flutter/material.dart';
import 'package:ht_chat_app/services/authentication.dart';
import 'package:ht_chat_app/pages/root_page.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'Flutter login demo',
        debugShowCheckedModeBanner: false,
        theme: new ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: new RootPage(auth: new Auth()));
  }
}
