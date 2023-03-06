import 'package:auth_crud_map_template/common/header_widget.dart';
import 'package:auth_crud_map_template/core/routes/route.dart';
import 'package:auth_crud_map_template/features/auth/controller/auth_controller.dart';
import 'package:auth_crud_map_template/features/auth/view/widget/biludtimer_Widget.dart';
import 'package:auth_crud_map_template/features/auth/view/widget/form_otb_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OtpEmailScreen extends StatelessWidget {
  OtpEmailScreen({
    super.key,
  });
  final authController = Get.find<AuthController>();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Scaffold(
        body: Align(
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
                "Enter OTP",
                style: theme.headlineMedium,
              ),
              const SizedBox(height: 10),
              Text(
                "Sent to ",
                style: theme.headlineSmall,
              ),
              const SizedBox(height: 10),
              BiludTimerWidget(
                authController: authController,
              ),
              const SizedBox(height: 50),
              FormOtbWidget(
                authController: authController,
              ),
              const SizedBox(height: 10),
              GestureDetector(
                  onTap: () {
                    //resend OTP code
                    authController.otp1Controller.text;
                    authController.otp2Controller.text;
                    authController.otp3Controller.text;
                    authController.otp4Controller.text;
                    authController.otp5Controller.text;
                    authController.otp6Controller.text;
                  },
                  child: Container(
                    alignment: Alignment.center,
                    child: Obx(() => authController.resend == false
                        ? Text(
                            "Resend Code",
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: Colors.grey[400]),
                          )
                        : TextButton(
                            child: Text(
                              "Resend Code",
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  color: Colors.green[400]),
                            ),
                            onPressed: () {
                            },
                          )),
                  )),
              const SizedBox(height: 50),
              ElevatedButton(onPressed: (){
                Get.offNamed(Routes.newPasswordScreen);
              }, child: const Text('Send'))
            ]),
      ),
    ));
  }
}
