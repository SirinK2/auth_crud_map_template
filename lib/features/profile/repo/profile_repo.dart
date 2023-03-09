import 'package:auth_crud_map_template/features/profile/model/profile_model.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ProfileRepository {
  final firebaseAuth = FirebaseAuth.instance;

  final user = FirebaseAuth.instance.currentUser;

  UserModel? getUserInfo() {
    if (user != null) {
      return UserModel(
        id: user?.uid,
        email: user?.email,
        displayName: user?.displayName,
        photoURL: user?.photoURL,
      );
    } else {
      return null;
    }
  }

  Future<void> updateUserInfo({
    required UserModel userModel,
    required Function() onError,
  }) async {
    if (user?.uid != null) {
      await user?.updatePhotoURL(userModel.photoURL);
      await user?.updateDisplayName(userModel.displayName);
    } else {
      onError();
    }
  }



  Future<void> changePassword({
    required String newPassword,
    required Function() onDone,
    required Function(String e) onError,
  }) async {
    if (user?.uid != null) {
      try {
        await user?.updatePassword(newPassword);
        onDone();
      } on FirebaseAuthException catch (e){
        print('object');
        onError(e.message.toString());
      }
    }

  }

  Future<void> signOut({
    required Function() onDone,
    required Function(String) onError,
  }) async {
    try {
      await firebaseAuth.signOut();
      onDone();
    } on FirebaseAuthException catch (e){
      onError(e.message.toString());
    }
  }
}
