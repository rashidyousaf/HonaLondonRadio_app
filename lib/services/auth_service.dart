import 'package:firebase_auth/firebase_auth.dart';
import 'package:honalondon_radio/consts/const.dart';

class AuthService {
  FirebaseAuth auth = FirebaseAuth.instance;

  Future siginUser(String emal, String password, context) async {
    try {
      UserCredential userCredential = await auth
          .signInWithEmailAndPassword(
        email: emal,
        password: password,
      )
          .then((value) {
        Navigator.pushNamed(context, "/aES");
        return value;
      });
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }
  }
}
