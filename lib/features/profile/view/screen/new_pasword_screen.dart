import 'package:auth_crud_map_template/common/header_widget.dart';
import 'package:auth_crud_map_template/core/routes/route.dart';
import 'package:auth_crud_map_template/features/profile/view/widget/new_password_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../logic/controller/profile_conroller.dart';

class NewPasswordScreen extends StatelessWidget {
  NewPasswordScreen({
    Key? key,
  }) : super(key: key);

  final profileController = Get.find<ProfileController>();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileController>(builder: (_) {
      return Scaffold(
          body: SingleChildScrollView(
              child: Form(
                  key: formKey,
                  child: Column(children: [
                    HeaderWidget(
                      onPressed: () {
                        Get.offNamed(Routes.profileScreen);
                      },
                    ),
                    NewPasswordWidget(profileController: profileController,)

                  ]))));
    });
  }
}
