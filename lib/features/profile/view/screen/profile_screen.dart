import 'package:auth_crud_map_template/common/header_widget.dart';
import 'package:auth_crud_map_template/core/routes/route.dart';
import 'package:auth_crud_map_template/features/profile/controller/profile_conroller.dart';
import 'package:auth_crud_map_template/features/profile/view/widget/darkmode_widget.dart';
import 'package:auth_crud_map_template/features/profile/view/widget/logout_widget.dart';
import 'package:auth_crud_map_template/features/profile/view/widget/localization_widget.dart';
import 'package:auth_crud_map_template/features/profile/view/widget/profile_header_widget.dart';
import 'package:auth_crud_map_template/features/profile/view/widget/profile_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({Key? key}) : super(key: key);

  final profileController = Get.find<ProfileController>();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileController>(builder: (_) {
      return Scaffold(
        body: SingleChildScrollView(
          child: Column(children: [
            HeaderWidget(
              title: 'Profile',
              onPressed: () {
                Get.offNamed(Routes.homeScreen);
              },
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              width: 390,
              height: 500,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  const SizedBox(height: 50),
                  ProfileHeaderWidget(
                    profileController: profileController,
                    name: profileController.profileName.value,
                    email: profileController.profileEmail.value,
                  ),
                  const SizedBox(height: 60),
                  ProfileWidget(
                    text: 'Personal Information',
                    onTap: () {
                      Get.offNamed(Routes.personalInformation);
                    },
                  ),
                  LocalizationWidget(
                    profileController: profileController,
                  ),
                  DarkModeWidget(
                    profileController: profileController,
                  ),
                  const SizedBox(height: 20),
                  const LogOutWidget(),
                ],
              ),
            ),
          ]),
        ),
      );
    });
  }
}
