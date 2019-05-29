import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  // This widget is the root of your application.

//  FocusNode myFocusNode;
//
//  @override
//  void initState() {
//    super.initState();
//
//    myFocusNode = FocusNode();
//  }
//
//  @override
//  void dispose() {
//    // Clean up the focus node when the Form is disposed
//    myFocusNode.dispose();
//
//    super.dispose();
//  }


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // The second text field will be focused when a user taps on the
              // FloatingActionButton
              TextField(
                autofocus: true,
              ),
            ],
          ),
        ),
//      floatingActionButton: FloatingActionButton(
//        // When the button is pressed, ask Flutter to focus our text field using
//        // myFocusNode.
//        onPressed: () => FocusScope.of(context).requestFocus(myFocusNode),
//        tooltip: 'Focus Second Text Field',
//        child: Icon(Icons.edit),
//      ),
    );
  }
}