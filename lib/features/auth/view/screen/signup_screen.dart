import 'package:auth_crud_map_template/common/header_widget.dart';
import 'package:auth_crud_map_template/common/text_field_widget.dart';
import 'package:auth_crud_map_template/core/constants/validation.dart';
import 'package:auth_crud_map_template/core/routes/route.dart';
import 'package:auth_crud_map_template/features/auth/view/widget/checkbox_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../logic/controller/auth_controller.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  final authController = Get.put(AuthController());
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return GetBuilder<AuthController>(builder: (_) {
      return Scaffold(
        body: SingleChildScrollView(
          child: Form(
              key: formKey,
              child: Column(children: [
                HeaderWidget(
                  onPressed: () {
                    Get.offNamed(Routes.homeScreen);
                  },
                ),
                Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    width: 390,
                    height: 550,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        const SizedBox(height: 50),
                        Text(
                          '  Create Account',
                          style: theme.bodyLarge,
                        ),
                        const SizedBox(height: 50),
                        TextFieldWidget(
                          controller: authController.emailController,
                          obscureText: false,
                          validator: (value) {
                            if (value.toString().isEmpty) {
                              return 'Enter your Emaile'.tr;
                            } else if (!RegExp(Validation.validationEmail)
                                .hasMatch(value)) {
                              return "Please enter a correct Email".tr;
                            } else {
                              return null;
                            }
                          },
                          prefixIcon: const Icon(Icons.email),
                          label: 'Email',
                        ),
                        TextFieldWidget(
                          controller: authController.nameController,
                          obscureText: false,
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
                          prefixIcon: const Icon(Icons.person),
                          label: 'Name',
                        ),
                        TextFieldWidget(
                          controller: authController.passwordController,
                          obscureText: authController.isVisibility ? false : true,


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

                          )),
                                   
                          prefixIcon: const Icon(
                            Icons.lock,
                          ),
                          label: 'Password',
                        ),
                        TextFieldWidget(
                          controller: authController.checkPasswordController,
                          obscureText: authController.isVisibility ? false : true,

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
                            )),


                          prefixIcon: const Icon(
                            Icons.lock,
                          ),
                          label: 'Confirm Password',
                        ),
                        CheckBoxWidget(
                          value: authController.isChecked,
                          onChanged: (bool? value) {
                            authController.checkBox(value!);
                          },
                          title: 'I accept',
                          supTitle: 'Terms & Conditions',
                        ),
                        ElevatedButton(
                          onPressed: () async {
                            // authController.signInWithEmail(, password)
                          },
                          child: const Text('Signup'),
                        ),
                        Row(
                          children: [
                            Text(
                              "Already have an account? ",
                              style: theme.bodySmall,
                            ),
                            TextButton(
                              onPressed: () {
                                Get.offNamed(Routes.loginScreen);
                              },
                              child: Text(
                                'Log In',
                                style: theme.labelSmall,
                              ),
                            ),
                          ],
                        ),
                      ],
                    )),
              ])),
        ),
      );
  });
  }
}
