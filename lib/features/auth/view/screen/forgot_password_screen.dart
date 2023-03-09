import 'package:auth_crud_map_template/common/header_widget.dart';
import 'package:auth_crud_map_template/core/constants/validation.dart';
import 'package:auth_crud_map_template/core/routes/route.dart';
import 'package:auth_crud_map_template/features/auth/view/widget/send_to_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import '../../logic/controller/auth_controller.dart';


class ForgotPasswordScreen extends StatelessWidget {
  ForgotPasswordScreen({
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
                      onPressed: () async {
                        await authController.forgotPassword(authController.emailController.text);
                        Get.offNamed(Routes.loginScreen);
                      },
                      text: 'Enter your Email ',
                      label: 'Email',
                      validator: (value) {
                        if (!RegExp(Validation.validationEmail)
                            .hasMatch(value)) {
                          return 'Invalid email';
                        } else {
                          return null;
                        }
                      },
                    )
                  ]))));
    });
  }
}
