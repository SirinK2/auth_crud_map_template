import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthRepository {
  final firebaseAuth = FirebaseAuth.instance;

  signUpWithEmailFirebase({
    required String email,
    required String password,
    required String name,
    required Function(String?) onDone,
    required Function(String e) onError,
  }) async {
    try {
      UserCredential credential =
          await firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      if (credential.user?.uid != null) {
        print('uid : ${credential.user?.uid}');
        credential.user?.updateDisplayName(name);
      }

      onDone(credential.user?.uid);
    } on FirebaseAuthException catch (e) {
      onError(e.message.toString());
    }
  }

  signInWithEmailFirebase({
    required String email,
    required String password,
    required Function(String?) onDone,
    required Function(String e) onError,
  }) async {
    try {
      UserCredential credential = await firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      onDone(credential.user?.uid);
    } on FirebaseAuthException catch (e) {
      onError(e.message.toString());
    }
  }

  signInWithPhoneNumber({
    required String phoneNumber,
    required Function(String?) onDone,
    required Function(String e) onError,
  }) async {
    await firebaseAuth.verifyPhoneNumber(
        phoneNumber: phoneNumber,
        verificationCompleted: (PhoneAuthCredential credential) async {
          await firebaseAuth.signInWithCredential(credential);
          print('PhoneAuthCredential $credential');
        },
        verificationFailed: (FirebaseAuthException e) {
          print('FirebaseAuthException $e');
        },
        codeSent: (String verificationId, int? resendToken) {},
        codeAutoRetrievalTimeout: (String verificationId) {},
        timeout: const Duration(seconds: 60));
  }

  signInWithGoogle({
    required Function(String?) onDone,
    required Function(String e) onError,
  }) async {
    try {
      late UserCredential cred;
      if (GetPlatform.isWeb) {
        GoogleAuthProvider googleProvider = GoogleAuthProvider();

        googleProvider
            .addScope('https://www.googleapis.com/auth/contacts.readonly');
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
    } on FirebaseAuthException catch (e) {
      onError(e.message.toString());
    }
  }

  forgotPassword({
    required String email,
    required Function(String e) onError,
  }) async {
    try {
      await firebaseAuth.sendPasswordResetEmail(email: email);
    } on FirebaseAuthException catch (e) {
      onError(e.message.toString());
    }
  }
}
