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
  final authController = Get.find<AuthController>();
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return GetBuilder<AuthController>(builder: (_) {
      return Scaffold(
        body: Align(
          alignment: Alignment.center,
          child: SizedBox(
            width: 382,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Login',
                      style: theme.bodyLarge,
                    ),
                  ),
                  const SizedBox(height: 50),
                  TextFieldWidget(
                    controller: authController.emailController,
                    obscureText: false,
                    validator: (value) {
                      if (!RegExp(Validation.validationEmail).hasMatch(value)) {
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
                    onPressed: () async {},
                    child: const Text('logIn'),
                  ),
                  TextButton(
                    onPressed: () {},
                    child:
                        Text('Forgot password ?', style: theme.headlineSmall),
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
                        "Don't have an Account?",
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
        ),
      );
    });
  }
}
