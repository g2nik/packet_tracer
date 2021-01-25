import 'package:firebase_auth/firebase_auth.dart';
import 'package:packet_tracer/models/user.dart';

class AuthService {

  final FirebaseAuth _auth = FirebaseAuth.instance;

  LocalUser _userFromFirebaseUser(User user) {
    return user != null ? LocalUser(uid: user.uid) : null;
  }

  Stream<LocalUser> get user {
    return _auth.authStateChanges().map(_userFromFirebaseUser);
  }

  Future signInAnon() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      User user = result.user;
      return user;
    } catch(e) {
      print(e);
      return null;
    }
  }
}