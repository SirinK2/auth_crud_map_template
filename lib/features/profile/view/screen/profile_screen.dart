import 'package:auth_crud_map_template/common/header_widget.dart';
import 'package:auth_crud_map_template/core/constants/app_image.dart';
import 'package:auth_crud_map_template/core/constants/colors_app.dart';
import 'package:auth_crud_map_template/core/routes/route.dart';
import 'package:auth_crud_map_template/features/profile/controller/profile_conroller.dart';
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
              child: Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: 390,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        HeaderWidget(
                          onPressed: () {
                            Get.offNamed(Routes.homeScreen);
                          },
                        ),
                        Image.asset(AppImages.splashImage),
                        const SizedBox(height: 10),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            profileController.profileName.value,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            profileController.profileEmail.value,
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Account",
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Divider(
                          color: blackColor,
                          thickness: 1,
                        ),
                      ],
                    ),
                  ))));
    });
  }
}
