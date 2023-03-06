import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController
    with GetSingleTickerProviderStateMixin {

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
}
