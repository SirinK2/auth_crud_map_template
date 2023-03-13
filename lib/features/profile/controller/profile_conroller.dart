import 'package:auth_crud_map_template/core/constants/keys.dart';
import 'package:auth_crud_map_template/features/profile/model/profile_model.dart';
import 'package:auth_crud_map_template/features/profile/repo/profile_repo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';


import '../../../core/routes/route.dart';

class ProfileController extends GetxController {
  ProfileRepository profileRepository = ProfileRepository();
  GetStorage authStorage = GetStorage();
  var profileName = 'Khairiah'.obs;
  var profilePhone = '0545401699'.obs;
  var profilePhoto = '';
  var profileEmail = 'khairiahalayyafi@gmail.com'.obs;

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
    getUserInfo();
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


  UserModel? getUserInfo()  {
     var user = profileRepository.getUserInfo(
       authStorage.read(AppKeys.authKey)
     );
     nameController.text = "${user?.displayName}";
     emailController.text = "${user?.email}";
     profilePhoto = "${user?.photoURL}";

     print('phoneNumber : ${user?.phoneNumber}');
     print('email : ${user?.email}');
     print('displayName : ${user?.displayName}');
     print('photoURL : ${user?.photoURL}');
     return user;
  }

  updateUserInfo({required UserModel userModel}) async {
    await profileRepository.updateUserInfo(
      userModel: userModel,
      onError: () {
        Get.snackbar('something went wrong', '');
      }, uid: authStorage.read(AppKeys.authKey)
      ,
    );
  }

  changePassword({
    required String newPassword,
  }) async {
    await profileRepository.changePassword(
      uid: authStorage.read(AppKeys.authKey),
      newPassword: newPassword,
      onError: (e) {
        print(e);
        Get.snackbar('something went wrong', e);
      },
      onDone: () {
        Get.offNamed(Routes.successfullyScreen);
      },
    );
  }

  signOut() async {
    await profileRepository.signOut(
      onError: (String e) {
        Get.snackbar(
          'something went wrong',
          e,
        );
      },
      onDone: () {
        authStorage.remove(AppKeys.authKey);
        Get.offAllNamed(Routes.loginScreen);
      },
    );
  }
}
