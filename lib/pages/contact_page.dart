import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:ht_chat_app/components/chatscreen.dart';
import 'package:ht_chat_app/models/users.dart';

class ContactPage extends StatefulWidget {
 @override
 _ContactPageState createState() {
   return _ContactPageState();
 }
}

class _ContactPageState extends State<ContactPage> {
 @override
 Widget build(BuildContext context) {
   return Scaffold(
     body: _buildBody(context),
   );
 }

Widget _buildBody(BuildContext context) {
 return StreamBuilder<QuerySnapshot>(
   stream: Firestore.instance.collection('users').snapshots(),
   builder: (context, snapshot) {
     if (!snapshot.hasData) return LinearProgressIndicator();

     return _buildList(context, snapshot.data.documents);
   },
 );
}

 Widget _buildList(BuildContext context, List<DocumentSnapshot> snapshot) {
   return ListView(
     padding: const EdgeInsets.only(top: 20.0),
     children: snapshot.map((data) => _buildListItem(context, data)).toList(),
   );
 }

 Widget _buildListItem(BuildContext context, DocumentSnapshot data) {
   final user = User.fromSnapshot(data);

   return Padding(
     key: ValueKey(user.name),
     padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
     child: Container(
       decoration: BoxDecoration(
         border: Border.all(color: Colors.grey),
         borderRadius: BorderRadius.circular(5.0),
       ),
       child: ListTile(
         title: Text(user.name),
         trailing: Text(user.phone),
         onTap: ()  {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ChatScreen(contactName: user.name),
            ),
          );
        },
       ),
     ),
   );
 }
}
