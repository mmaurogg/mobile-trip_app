import 'package:firebase_auth/firebase_auth.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:tripapp/User/repository/cloud_firestore_api.dart';
import 'package:tripapp/User/repository/cloud_firestore_repository.dart';

class UserBloc implements Bloc {


  //Casos de uso

  //1. SignIn a la palicacion Google

  //2. Registrar usuario en base de datos
  final _cloudFirestoreRepository = CloudFirestoreRepository();

  //void updateUserData(User user) =

  @override
  void dispose() {
    // TODO: implement dispose
  }

}