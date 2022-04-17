import 'package:firebase_auth/firebase_auth.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:platzi_trips_app/User/repository/authRepository.dart';

class UserBlock implements Bloc{
  final _authRepository = AuthRepository();

  Future<UserCredential> signIn(){
    return _authRepository.signinFirebase();
  }

  @override
  void dispose() {
    // TODO: implement dispose
  }

}