import 'package:auth_crud_map_template/common/header_widget.dart';
import 'package:auth_crud_map_template/common/text_field_widget.dart';
import 'package:auth_crud_map_template/core/constants/validation.dart';
import 'package:auth_crud_map_template/core/routes/route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import '../../controller/auth_controller.dart';

class ForgotPasswordScreen extends StatelessWidget {
  ForgotPasswordScreen({
    super.key,
  });

  final authController = Get.find<AuthController>();
  final formKey = GlobalKey<FormState>();
  final authStorage = GetStorage();

  @override
  Widget build(BuildContext context) {

    final theme = Theme.of(context).textTheme;
    return GetBuilder<AuthController>(builder: (_) {
      return Scaffold(
          body: Form(
              key: formKey,
              child: Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: 390,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      HeaderWidget(
                        onPressed: () {
                          Get.offNamed(Routes.loginScreen);
                        },
                      ),
                      const SizedBox(height: 50),
                      Text(
                        'Enter Email Address ',
                        style: theme.headlineLarge,
                      ),
                      const SizedBox(height: 50),
                      TextFieldWidget(
                        controller: authController.emailController,
                        obscureText: false,
                        validator: (value) {
                          if (!RegExp(Validation.validationEmail)
                              .hasMatch(value)) {
                            return 'Invalid email';
                          } else {
                            return null;
                          }
                        },
                        prefixIcon: const Icon(Icons.email),
                        label: 'Email',
                        // height: 50,
                      ),
                      const SizedBox(height: 50),
                      ElevatedButton(
                        onPressed: () {
                        Get.offNamed(Routes.otpEmailScreen);
                        },
                        child: const Text("Send"),
                      ),
                    ],
                  ),
                ),
              )));
    });
  }
}
