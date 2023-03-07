import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/routes/route.dart';
import '../repo/auth_repo.dart';

class AuthController extends GetxController
    with GetSingleTickerProviderStateMixin {
  final AuthRepo _authRepo = AuthRepo();

  //
  bool isVisibility = false;
  bool isChecked = false;

//
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController checkPasswordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController aboutYourselfController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController birthController = TextEditingController();
  TextEditingController resetPasswordController = TextEditingController();

//
  void visibility() {
    isVisibility = !isVisibility;
    update();
  }

  //
  void checkBox(bool val) {
    isChecked = val;
    update();
  }

  signUpWithEmail(
    String email,
    String password,
    String name,
  ) async {
    await _authRepo.signUpWithEmailFirebase(
        email: email,
        password: password,
        name: name,
        onDone: (String? uid) {
          if (uid != null) {
            print('uid $uid');
            Get.toNamed(Routes.profileScreen);
          } else {
            Get.snackbar('error', 'message');
          }
        });
  }

  signInWithEmail(
    String email,
    String password,
  ) async {
    await _authRepo.signInWithEmailFirebase(
      email: email,
      password: password,
      onDone: (String? uid) {
        if (uid != null) {
          print('uid $uid');
          Get.toNamed(Routes.profileScreen);
        } else {
          Get.snackbar('error', 'message');
        }
      },
    );
  }

  signInWithPhone(
    String phoneNum,
  ) async {
    await _authRepo.signInWithPhoneNumber(
      phoneNumber: '',
      onDone: (String? uid) {
        if (uid != null) {
          print('uid $uid');
          Get.toNamed(Routes.profileScreen);
        } else {
          Get.snackbar('error', 'message');
        }
      },
    );
  }

  signInWithGoogle() async {
    await _authRepo.signInWithGoogle(
      onDone: (String? uid) {
        if (uid != null) {
          print('uid $uid');
          Get.toNamed(Routes.profileScreen);
        } else {
          Get.snackbar('error', 'message');
        }
      },
    );
  }
}
