
import 'package:cloud_firestore/cloud_firestore.dart';

class User {
 final String name;
 final String phone;
 final String peerId;
 final DocumentReference reference;

 User.fromMap(Map<String, dynamic> map, {this.reference})
     : assert(map['name'] != null),
       assert(map['phone'] != null),
       assert(map['peerId'] != null),
       name = map['name'],
       phone = map['phone'],
       peerId = map['peerId'];

 User.fromSnapshot(DocumentSnapshot snapshot)
     : this.fromMap(snapshot.data, reference: snapshot.reference);

 @override
 String toString() => "Users<$name:$phone>";
}