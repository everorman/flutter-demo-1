import 'package:firebase_auth/firebase_auth.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:platzi_trips_app/User/repository/authRepository.dart';

class UserBloc implements Bloc{
  final _authRepository = AuthRepository();
  Stream<User?> streamFirebase = FirebaseAuth.instance.authStateChanges();
  Stream<User?> get authStatus => streamFirebase;

  ///Flujo de datos - Stream
  ///En este caso se usa el Stream de Firebase
  ///En caso contrario se debe usar StreamController

  Future<UserCredential> signIn(){
    return _authRepository.signinFirebase();
  }

  signOut(){
    _authRepository.signOut();
  }

  @override
  void dispose() {
    // TODO: implement dispose
  }

}