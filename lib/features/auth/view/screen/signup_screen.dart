import 'package:auth_crud_map_template/common/header_widget.dart';
import 'package:auth_crud_map_template/common/text_field_widget.dart';
import 'package:auth_crud_map_template/core/constants/app_image.dart';
import 'package:auth_crud_map_template/core/constants/validation.dart';
import 'package:auth_crud_map_template/core/routes/route.dart';
import 'package:auth_crud_map_template/features/auth/controller/auth_controller.dart';
import 'package:auth_crud_map_template/features/auth/view/widget/checkbox_widget.dart';
import 'package:auth_crud_map_template/features/auth/view/widget/social_button_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

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
              key: formKey, child:
          Align(
            alignment: Alignment.center,
            child: SizedBox(
                width: 390,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    HeaderWidget(onPressed: () { Get.offNamed(Routes.homeScreen); },),
                    const SizedBox(height: 50),
                      Row(
                        children: [
                          const SizedBox(height: 10),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              '  Create Account',
                              style: theme.bodyLarge,
                            ),
                          ),
                        ],
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
                      const SizedBox(height: 10),
                      TextFieldWidget(
                        controller: authController.nameController,
                        obscureText: false,
                        validator: (value) {

                        },
                        prefixIcon: const Icon(Icons.person),
                        label: 'Name',
                      ),
                      const SizedBox(height: 10),
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
                          ),
                        ),
                        prefixIcon: const Icon(
                          Icons.lock,
                        ),
                        label: 'Password',
                      ),
                      const SizedBox(height: 10),
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
                          ),
                        ),
                        prefixIcon: const Icon(
                          Icons.lock,
                        ),
                        label: 'Password',
                      ),
                      const SizedBox(height: 10),
                    CheckBoxWidget(
                      value: authController.isChecked,
                      onChanged: (bool? value) {
                        authController.checkBox(value!);
                      },
                      title: 'I accept',
                      supTitle: 'Terms & Conditions',
                    ),
                      const SizedBox(height: 10),
                      ElevatedButton(
                        onPressed: () async {

                        },
                        child: const Text('Signup'),
                      ),
                      const SizedBox(height: 10),
                      SocialButton(
                        onPressed: () {},
                        text: 'Sign Up with Google',
                        images: AppImages.googleLogo,
                      ),
                      const SizedBox(height: 10),
                      SocialButton(
                        onPressed: () {},
                        text: 'Sign Up with Apple',
                        images: AppImages.appleLogo,
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "  Already have an account? ",
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
            )
            ),
        ),
          );
    });
  }
}
