import 'package:auth_crud_map_template/features/auth/controller/auth_controller.dart';
import 'package:auth_crud_map_template/features/auth/view/widget/text_field_otp_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FormOtbWidget extends StatelessWidget {
  const FormOtbWidget({Key? key, required this.authController})
      : super(key: key);
  final AuthController authController;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFieldOtpWidget(
            controller: authController.otp1Controller,
            onChanged: (value) {
              authController.nextField(
                  value: value, focusNode: authController.pin2FocusNode);
            },
          ),
          const SizedBox(width: 10),
          TextFieldOtpWidget(
            controller: authController.otp2Controller,
            onChanged: (value) {
              authController.nextField(
                  value: value, focusNode: authController.pin3FocusNode);
            },
          ),
          const SizedBox(width: 10),
          TextFieldOtpWidget(
            controller: authController.otp3Controller,
            onChanged: (value) {
              authController.nextField(
                  value: value, focusNode: authController.pin4FocusNode);
            },
          ),
          const SizedBox(width: 10),
          TextFieldOtpWidget(
            controller: authController.otp4Controller,
            onChanged: (value) {
              authController.nextField(
                  value: value, focusNode: authController.pin5FocusNode);
            },
          ),
          const SizedBox(width: 10),
          TextFieldOtpWidget(
            controller: authController.otp5Controller,
            onChanged: (value) {
              authController.nextField(
                  value: value, focusNode: authController.pin6FocusNode);
            },
          ),
          const SizedBox(width: 10),
          TextFieldOtpWidget(
            focusNode: authController.pin5FocusNode,
            controller: authController.otp6Controller,
            onChanged: (value) {
              authController.pin6FocusNode?.unfocus();
            },
          ),
        ],
      ),
    );
  }
}
