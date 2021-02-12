import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // Sign in Anonymously
  Future signInAnon() async {
    try {
      UserCredential result =
          await _auth.signInAnonymously(); // Previously AuthResult
      User user = result.user; // Previously FirebaseUser
      return user;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  // TODO: Sign in with email and password

  // TODO: Register with email and password

  // TODO: Register with phone number

  // TODO: Signin with phone number

  // TODO: Sign Out
}
