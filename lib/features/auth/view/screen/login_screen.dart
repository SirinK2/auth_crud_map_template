import 'package:auth_crud_map_template/common/header_widget.dart';
import 'package:auth_crud_map_template/common/text_field_widget.dart';
import 'package:auth_crud_map_template/core/constants/app_image.dart';
import 'package:auth_crud_map_template/core/constants/validation.dart';
import 'package:auth_crud_map_template/core/routes/route.dart';
import 'package:auth_crud_map_template/features/auth/controller/auth_controller.dart';
import 'package:auth_crud_map_template/features/auth/view/widget/checkbox_widget.dart';
import 'package:auth_crud_map_template/features/auth/view/widget/social_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final formKey = GlobalKey<FormState>();
  final authController = Get.find<AuthController>();
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return GetBuilder<AuthController>(builder: (_) {
      return Scaffold(
          body: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  HeaderWidget(
                    onPressed: () {
                      Get.offNamed(Routes.homeScreen);
                    },
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    width: 390,
                    height: 600,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          const SizedBox(height: 50),
                          Text(
                            '  Login',
                            style: theme.bodyLarge,
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
                            prefixIcon: const Icon(
                              Icons.login,
                            ),
                            label: 'Email or Phone',
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
                                return '';
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
                          CheckBoxWidget(
                            value: authController.isChecked,
                            onChanged: (bool? value) {
                              authController.checkBox(value!);
                            },
                            title: 'Remember me',
                            supTitle: '',
                          ),
                          ElevatedButton(
                            onPressed: () async {},
                            child: const Text('logIn'),
                          ),
                          TextButton(
                            onPressed: () {
                              Get.offNamed(Routes.forgotPasswordScreen);
                            },
                            child: Text('Forgot password ?',
                                style: theme.headlineSmall),
                          ),
                          SignInWithButton(
                            onPressed: () {
                              Get.offNamed(Routes.logInWithPhoneScreen);
                            },
                            text: 'Sign In with Phone',
                            images: AppImages.phoneLogo,
                          ),
                          SignInWithButton(
                            onPressed: () {},
                            text: 'Sign In with Google',
                            images: AppImages.googleLogo,
                          ),
                          SignInWithButton(
                            onPressed: () {},
                            text: 'Sign In with Apple',
                            images: AppImages.appleLogo,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "  Don't have an Account?",
                                style: theme.bodySmall,
                              ),
                              TextButton(
                                onPressed: () {
                                  Get.offNamed(Routes.signScreen);
                                },
                                child: Text(
                                  'Sign UP',
                                  style: theme.labelSmall,
                                ),
                              ),
                            ],
                          ),
                        ]),
                  ),
                ],
              ),
            ),
          ));



    });
  }
}