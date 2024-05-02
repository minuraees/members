import 'package:cloud_firestore/cloud_firestore.dart';

class Firestoredata {
  final CollectionReference membersCollection =
      FirebaseFirestore.instance.collection('members');
  List<String> members = [];

  Future<List<String>> getData() async {
    try {
      await membersCollection.get().then((querySnapshot) {
        for (var member in querySnapshot.docs) {
          print(member.get('name'));
          members.add(member.get('name'));
        }
      });
    } catch (e) {
      print('error - $e');
    }
    return members;
  }
}
