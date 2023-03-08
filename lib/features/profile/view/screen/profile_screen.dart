import 'package:auth_crud_map_template/common/header_widget.dart';
import 'package:auth_crud_map_template/core/routes/route.dart';
import 'package:auth_crud_map_template/features/profile/controller/profile_conroller.dart';
import 'package:auth_crud_map_template/features/profile/view/widget/profile_header_widget.dart';
import 'package:auth_crud_map_template/features/profile/view/widget/profile_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({Key? key}) : super(key: key);

  final profileController = Get.find<ProfileController>();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
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
          height: 450,
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
              const SizedBox(height: 50),
              ProfileWidget(
                text: 'Change Your Password',
                onTap: () {
                  Get.offNamed(Routes.newPasswordScreen);
                },
              ),
              const SizedBox(height: 10),
              InkWell(
                onTap: () {},
                child: Row(
                  children: [
                    Text(
                      'Log Out',
                      style: theme.headlineMedium,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Icon(
                      Icons.logout,
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ])));
    });
  }
}
