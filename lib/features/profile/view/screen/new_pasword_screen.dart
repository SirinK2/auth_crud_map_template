import 'package:auth_crud_map_template/common/header_widget.dart';
import 'package:auth_crud_map_template/common/text_field_widget.dart';
import 'package:auth_crud_map_template/core/constants/validation.dart';
import 'package:auth_crud_map_template/core/routes/route.dart';
import 'package:auth_crud_map_template/features/profile/controller/profile_conroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewPasswordScreen extends StatelessWidget {
  NewPasswordScreen({
    Key? key,
  }) : super(key: key);

  final profileController = Get.find<ProfileController>();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
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
                    Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        width: 390,
                        height: 500,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            const SizedBox(height: 50),
                            Text(
                              'New Password',
                              style: theme.headlineMedium,
                            ),
                            Text(
                              'Set the new password for your account ',
                              style: theme.bodyMedium,
                            ),
                            const SizedBox(height: 50),
                            TextFieldWidget(
                              controller:
                                  profileController.yourPasswordController,
                              obscureText:
                                  profileController.isVisibility ? false : true,
                              validator: (value) {
                                if (value.toString().isEmpty) {
                                  return 'Enter your Password';
                                } else if (!RegExp(
                                        Validation.validationPassword)
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
                                  profileController.visibility();
                                },
                                icon: profileController.isVisibility
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
                              label: 'Your Password',
                            ),
                            TextFieldWidget(
                              controller: profileController.passwordController,
                              obscureText:
                                  profileController.isVisibility ? false : true,
                              validator: (value) {
                                if (value.toString().isEmpty) {
                                  return 'Enter your Password';
                                } else if (!RegExp(
                                        Validation.validationPassword)
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
                                  profileController.visibility();
                                },
                                icon: profileController.isVisibility
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
                              label: 'New Password',
                            ),
                            TextFieldWidget(
                              controller:
                                  profileController.resetPasswordController,
                              obscureText:
                                  profileController.isVisibility ? false : true,
                              validator: (value) {
                                if (value.toString().isEmpty) {
                                  return 'Enter your Password';
                                } else if (profileController
                                        .passwordController ==
                                    profileController.resetPasswordController) {
                                  return 'The password does not match please try again';
                                } else {
                                  return null;
                                }
                              },
                              suffixIcon: IconButton(
                                onPressed: () {
                                  profileController.visibility();
                                },
                                icon: profileController.isVisibility
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
                              label: 'Confirm Password',
                            ),
                            const SizedBox(height: 50),
                            ElevatedButton(
                              onPressed: () async {
                                Get.offNamed(Routes.successfullyScreen);
                              },
                              child: const Text('Update Password'),
                            ),
                          ],
                        ))
                  ]))));
    });
  }
}
