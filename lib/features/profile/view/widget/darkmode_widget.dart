import 'package:auth_crud_map_template/core/constants/colors_app.dart';
import 'package:auth_crud_map_template/core/theme/controller/theme_controller.dart';
import '../../logic/controller/profile_conroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DarkModeWidget extends StatelessWidget {
  const DarkModeWidget({Key? key, required this.profileController})
      : super(key: key);
  final ProfileController profileController;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Dark Mode'),
            Switch(
              value: profileController.isDarkTheme,
              onChanged: (value) {
                ThemeController().changesTheme();
                profileController.isDarkTheme = value;
                Get.snackbar(
                  '',
                  '',
                  maxWidth: 400,
                  titleText: Text(
                    'App Theme Changed',
                    textAlign: TextAlign.center,
                    style: theme.headlineMedium,
                  ),
                  snackStyle: SnackStyle.FLOATING,
                  backgroundColor:
                  profileController.isDarkTheme ? whiteColor : blackColor,
                  snackPosition: SnackPosition.BOTTOM,
                );
              },
            ),
          ],
        ),
        const Divider(
          thickness: 1,
        ),
      ],
    );
  }
}
