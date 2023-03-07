import 'package:auth_crud_map_template/common/header_widget.dart';
import 'package:auth_crud_map_template/core/constants/validation.dart';
import 'package:auth_crud_map_template/core/routes/route.dart';
import 'package:auth_crud_map_template/features/auth/view/widget/send_to_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../logic/controller/auth_controller.dart';

class LogInWithPhoneScreen extends StatelessWidget {
  LogInWithPhoneScreen({
    super.key,
  });

  final authController = Get.find<AuthController>();
  final formKey = GlobalKey<FormState>();
  final authStorage = GetStorage();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthController>(builder: (_) {
      return Scaffold(
          body: SingleChildScrollView(
              child: Form(
                  key: formKey,
                  child: Column(children: [
                    HeaderWidget(
                      onPressed: () {
                        Get.offNamed(Routes.loginScreen);
                      },
                    ),
                    SendToWidget(
                      authController: authController,
                      onPressed: () {
                        authController.signInWithPhone('+966538413757');
                        // Get.offNamed(Routes.otpPhoneScreen);

                      },
                      text: 'Enter your Phone Number ',
                      label: 'Phone Number',
                      validator: (value) {
                        if (value.toString().isEmpty) {
                          return 'Enter your Password';
                        } else if (!RegExp(Validation.validationPhoneNumber)
                            .hasMatch(value)) {
                          return "Please enter a correct Number";
                        } else if (value.toString().length < 10) {
                          return 'Phone Number should be at least 10 long ';
                        } else {
                          return null;
                        }
                      },
                    )
                  ]))));
    });
  }
}
