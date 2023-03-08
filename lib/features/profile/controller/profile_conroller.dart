import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController
    with GetSingleTickerProviderStateMixin {
  var profileName = 'Khairiah'.obs;
  var profilePhoto = ''.obs;
  var profileEmail = 'khairiahalayyafi@gmail.com'.obs;

  //Password icon
  bool isVisibility = false;

  //Change Password
  TextEditingController passwordController = TextEditingController();
  TextEditingController yourPasswordController = TextEditingController();
  TextEditingController resetPasswordController = TextEditingController();

  //Change Email
  TextEditingController emailController = TextEditingController();

  //fun for Password icon
  void visibility() {
    isVisibility = !isVisibility;
    update();
  }
}
