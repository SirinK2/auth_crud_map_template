import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:timer_count_down/timer_controller.dart';
import '../../../../core/routes/route.dart';
import '../repository/auth_repository.dart';

class AuthController extends GetxController {
  final AuthRepository _authRepo = AuthRepository();

  //CheckBox
  bool isChecked = false;

//Password icon
  bool isVisibility = false;

//Timer for resend email
  final CountdownController controller = CountdownController(autoStart: true);
  var resend = false.obs;

//OTP for email
  TextEditingController otp1Controller = TextEditingController();
  TextEditingController otp2Controller = TextEditingController();
  TextEditingController otp3Controller = TextEditingController();
  TextEditingController otp4Controller = TextEditingController();
  TextEditingController otp5Controller = TextEditingController();
  TextEditingController otp6Controller = TextEditingController();

  FocusNode? pin2FocusNode;
  FocusNode? pin3FocusNode;
  FocusNode? pin4FocusNode;
  FocusNode? pin5FocusNode;
  FocusNode? pin6FocusNode;

  void nextField({String? value, FocusNode? focusNode}) {
    if (value?.length == 1) {
      focusNode?.requestFocus();
    }
  }

  //for controllers in log in
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController checkPasswordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

//fun for Password icon
  void visibility() {
    isVisibility = !isVisibility;
    update();
  }

//fun for CheckBox
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
            Get.offNamed(Routes.profileScreen);
          } else {
            Get.snackbar('error', 'message');
          }
        },
        onError: (String e) {
          Get.snackbar(
            'something went wrong',
            e,
          );
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
          Get.toNamed(Routes.profileScreen);
        }
      },
      onError: (String e) {
        Get.snackbar(
          'something went wrong',
          e,
        );
      },
    );
  }

  signInWithPhone(
    String phoneNum,
  ) async {
    await _authRepo.signInWithPhoneNumber(
      phoneNumber: phoneNum,
      onDone: (String? uid) {
        if (uid != null) {
          Get.toNamed(Routes.profileScreen);
        } else {
          Get.snackbar('error', 'message');
        }
      },
      onError: (String e) {
        Get.snackbar(
          'something went wrong',
          e,
        );
      },
    );
  }

  signInWithGoogle() async {
    await _authRepo.signInWithGoogle(
      onDone: (String? uid) {
        if (uid != null) {
          Get.toNamed(Routes.profileScreen);
        } else {
          Get.snackbar('error', 'message');
        }
      },
      onError: (String e) {
        Get.snackbar(
          'something went wrong',
          e,
        );
      },
    );
  }

  forgotPassword(String email) async {
    await _authRepo.forgotPassword(
        email: email,
        onError: (String e) {
          Get.snackbar(
            'something went wrong',
            e,
          );
        });
  }
}
