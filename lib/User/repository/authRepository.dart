import 'package:firebase_auth/firebase_auth.dart';
import 'package:platzi_trips_app/User/repository/FirebaseAuthApi.dart';

class AuthRepository {
  final _firebaseAuthAPI = FirebaseAuthAPI();
  Future<UserCredential> signinFirebase() => _firebaseAuthAPI.signIn();
  signOut() => _firebaseAuthAPI.signOut();
}