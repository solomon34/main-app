import 'package:firebase_auth/firebase_auth.dart';
import 'package:main_app/authentication/user.dart'; 


class Auth {
  FirebaseAuth _auth = FirebaseAuth.instance; 

  Future<User> registerUser(email, password) async {
    AuthResult result = 
      await _auth.createUserWithEmailAndPassword(email: email, password: password,); 
    FirebaseUser user = result.user; 
    return  userFromFirebase(user);
  } 
  User userFromFirebase(user) { 
    return User(email: user.email, uid: user.uid);
  }

User _userFromFirebaseUser(FirebaseUser user) {
    return User(
      uid: user.uid,
      email: user.email,
    );
  }

  Stream<User> get user {
    return _auth.onAuthStateChanged.map(_userFromFirebaseUser);
  }
}