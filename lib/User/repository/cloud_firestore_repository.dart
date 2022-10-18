import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tripapp/User/repository/cloud_firestore_api.dart';

import '../model/user.dart';

class CloudFirestoreRepository {

  final _cloudFirestoreAPI= CloudFirestoreAPI();
  
  void updateUserDataFirestore(User user) => _cloudFirestoreAPI.updateUserData(user);



}