import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:timer_count_down/timer_controller.dart';

class AuthController extends GetxController
    with GetSingleTickerProviderStateMixin {

// <<<<<<< HEAD
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
// =======
//   //
//   bool isVisibility = false;
//   bool isChecked = false;
//
//
// //
//   TextEditingController firstNameController = TextEditingController();
//   TextEditingController lastNameController = TextEditingController();
// >>>>>>> 7dde245 (fix: conflict)
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController checkPasswordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController aboutYourselfController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController birthController = TextEditingController();
  TextEditingController resetPasswordController = TextEditingController();



//fun for Password icon

  void visibility() {
    isVisibility = !isVisibility;
    update();
  }


// <<<<<<< HEAD
//fun for CheckBox
// =======
//   //
// >>>>>>> 7dde245 (fix: conflict)
  void checkBox(bool val) {
    isChecked = val;
    update();
  }
}
