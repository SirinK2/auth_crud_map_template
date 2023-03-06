import 'package:auth_crud_map_template/common/header_widget.dart';
import 'package:auth_crud_map_template/core/constants/app_image.dart';
import 'package:auth_crud_map_template/core/routes/route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuccessfullyScreen extends StatelessWidget {
  const SuccessfullyScreen({Key? key}) : super(key: key);

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
                  Image.asset(
                    AppImages.successLogo,
                    height: 104,
                    width: 104,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Successfully',
                    style: theme.headlineMedium,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Your password has been reset successfully',
                    style: theme.bodyMedium,
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            )));
  }
}
