import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:login_demo/data.dart';
import 'package:login_demo/update_profile.dart';

class DatabaseService {
  final String uid;

  DatabaseService({this.uid});
  final CollectionReference profileCollection =
      Firestore.instance.collection('proflile');

  Future updateUserData(String name, String status) async {
    return await profileCollection.document(uid).setData({
      'name': name,
      'status': status,
    });
  }

  UserData _userDataFromSnapshot(DocumentSnapshot snapshot) {
    return UserData(
        uid: uid, name: snapshot.data['name'], status: snapshot.data['status']);
  }

  Stream<DocumentSnapshot> get display {
    return profileCollection.document(uid).snapshots();
  }

  Stream<UserData> get userData {
    return profileCollection
        .document(uid)
        .snapshots()
        .map(_userDataFromSnapshot);
  }
}
