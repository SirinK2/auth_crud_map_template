import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController
    with GetSingleTickerProviderStateMixin {
  //personal info
  var profileName = 'Khairiah'.obs;
  var profilePhone = '0545401699'.obs;
  var profilePhoto = ''.obs;
  var profileEmail = 'khairiahalayyafi@gmail.com'.obs;

  //change the Language to arabic
  late bool changeLanguage = false;

  //Change Theme
  late bool isDarkTheme = false;
  Rx<String> currentModeName = ''.obs;

  //Turn Off Notifications
  late bool turnOffNotifications = false;


  //Password icon
  bool isVisibility = false;

  //Personal Info
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  //Change Password
  TextEditingController passwordController = TextEditingController();
  TextEditingController yourPasswordController = TextEditingController();
  TextEditingController resetPasswordController = TextEditingController();

  ///////////////////onInit///////////////////////////
  @override
  void onInit() {
    getEmail();
    getPhone();
    getName();
    super.onInit();
  }
  ///////////////////////////////////////////////////

//get Email to Personal Info
  Future<void> getEmail() async {
    emailController.text = profileEmail.toString();
    update();
  }

//get Phone to Personal Info
  Future<void> getPhone() async {
    phoneController.text = profilePhone.toString();
    update();
  }

  //get Name to Personal Info
  Future<void> getName() async {
    nameController.text = profileName.toString();
    update();
  }

  //fun for Password icon
  void visibility() {
    isVisibility = !isVisibility;
    update();
  }

  //

}
