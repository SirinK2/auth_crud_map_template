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
        body: Column(children: [
      HeaderWidget(
        onPressed: () {
          Get.offNamed(Routes.loginScreen);
        },
      ),
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        width: 390,
        height: 300,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            const SizedBox(height: 50),
            Image.asset(
              AppImages.successLogo,
              height: 104,
              width: 104,
            ),
            Text(
              'Successfully',
              style: theme.headlineMedium,
            ),
          ],
        ),
      )
    ]));
  }
}
