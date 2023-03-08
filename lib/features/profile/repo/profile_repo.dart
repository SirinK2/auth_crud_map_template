import 'package:firebase_auth/firebase_auth.dart';

class  ProfileRepo{
  final firebaseAuth = FirebaseAuth.instance;

  final user = FirebaseAuth.instance.currentUser;

  getUserInfo() {
    if (user != null) {
      final name = user?.displayName;
      final email = user?.email;
      final photoUrl = user?.photoURL;
      final emailVerified = user?.emailVerified;
      final uid = user?.uid;
    }

  }

  updateUserInfo(
      String name,
      String photoUrl,
      String newPassword,
      ) async {
    if (firebaseAuth.currentUser?.uid != null) {
      user?.updatePhotoURL(photoUrl);
      user?.updateDisplayName(name);
      user?.updatePassword(newPassword);
    }
  }


  signOut() async {
    await firebaseAuth.signOut();
  }
}