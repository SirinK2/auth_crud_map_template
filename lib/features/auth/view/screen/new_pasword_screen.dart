import 'package:auth_crud_map_template/common/header_widget.dart';
import 'package:auth_crud_map_template/common/text_field_widget.dart';
import 'package:auth_crud_map_template/core/constants/validation.dart';
import 'package:auth_crud_map_template/core/routes/route.dart';
import 'package:auth_crud_map_template/features/auth/controller/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewPasswordScreen extends StatelessWidget {
  NewPasswordScreen({
    Key? key,
  }) : super(key: key);

  final authController = Get.find<AuthController>();
  final formKey = GlobalKey<FormState>();

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
                            'New Password',
                            style: theme.headlineMedium,
                          ),
                          const SizedBox(height: 10),
                          Text(
                            'Set the new password for your account ',
                            style: theme.bodyMedium,
                          ),
                          const SizedBox(height: 50),
                          TextFieldWidget(
                            controller: authController.passwordController,
                            obscureText:
                                authController.isVisibility ? false : true,
                            validator: (value) {
                              if (value.toString().isEmpty) {
                                return 'Enter your Password';
                              } else if (!RegExp(Validation.validationPassword)
                                  .hasMatch(value)) {
                                return "Please enter a correct Password";
                              } else if (value.toString().length < 7) {
                                return 'Passwords should be at least 8 characters long ';
                              } else {
                                return null;
                              }
                            },
                            suffixIcon: IconButton(
                              onPressed: () {
                                authController.visibility();
                              },
                              icon: authController.isVisibility
                                  ? const Icon(
                                      Icons.visibility_off,
                                    )
                                  : const Icon(
                                      Icons.visibility,
                                    ),
                            ),
                            prefixIcon: const Icon(
                              Icons.lock,
                            ),
                            label: 'Password',
                          ),
                          const SizedBox(height: 10),
                          TextFieldWidget(
                            controller: authController.resetPasswordController,
                            obscureText:
                                authController.isVisibility ? false : true,
                            validator: (value) {
                              if (value.toString().isEmpty) {
                                return 'Enter your Password';
                              } else if (authController.passwordController ==
                                  authController.resetPasswordController) {
                                return 'The password does not match please try again';
                              } else {
                                return null;
                              }
                            },
                            suffixIcon: IconButton(
                              onPressed: () {
                                authController.visibility();
                              },
                              icon: authController.isVisibility
                                  ? const Icon(
                                      Icons.visibility_off,
                                    )
                                  : const Icon(
                                      Icons.visibility,
                                    ),
                            ),
                            prefixIcon: const Icon(
                              Icons.lock,
                            ),
                            label: 'Password',
                          ),
                          const SizedBox(height: 10),
                          ElevatedButton(
                            onPressed: () async {
                              Get.offNamed(Routes.successfullyScreen);
                            },
                            child: const Text('Update Password'),
                          ),
                        ],
                      )))));
    });
  }
}
