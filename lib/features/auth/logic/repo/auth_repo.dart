import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthRepo {
  final firebaseAuth = FirebaseAuth.instance;
  final user = FirebaseAuth.instance.currentUser;

  signUpWithEmailFirebase({
    required String email,
    required String password,
    required String name,
    required Function(String?) onDone,
  }) async {
    try {
      UserCredential credential =
          await firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      if (credential.user?.uid != null) {
        print('uid : ${credential.user?.uid}');
        user?.updateDisplayName(name);
      }

      onDone(credential.user?.uid);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print('the exp is $e');
    }
  }

  signInWithEmailFirebase({
    required String email,
    required String password,
    required Function(String?) onDone,
  }) async {
    try {
      UserCredential credential = await firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      onDone(credential.user?.uid);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }
  }

  signInWithPhoneNumber({
    required String phoneNumber,
    required Function(String?) onDone,
  }) async {
    await firebaseAuth.signInWithPhoneNumber(phoneNumber);
  }

  signInWithGoogle({
    required Function(String?) onDone,
  }) async {
    try {
      late UserCredential cred;
      if (GetPlatform.isWeb) {
        GoogleAuthProvider googleProvider = GoogleAuthProvider();

        googleProvider
            .addScope('https://www.googleapis.com/auth/contacts.readonly');
        googleProvider.setCustomParameters({'login_hint': 'user@example.com'});
        cred = await FirebaseAuth.instance.signInWithPopup(googleProvider);
      } else {
        final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
        final GoogleSignInAuthentication? googleAuth =
            await googleUser?.authentication;

        final credential = GoogleAuthProvider.credential(
          accessToken: googleAuth?.accessToken,
          idToken: googleAuth?.idToken,
        );
        cred = await firebaseAuth.signInWithCredential(credential);
      }

      onDone(cred.user?.uid);
    } catch (e) {
      print("google $e");
    }
  }
}
