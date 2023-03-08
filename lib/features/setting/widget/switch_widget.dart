import 'package:auth_crud_map_template/core/constants/colors_app.dart';
import 'package:auth_crud_map_template/core/theme/controller/theme_controller.dart';
import 'package:auth_crud_map_template/features/setting/controllers/setting_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SwitchWidget extends StatelessWidget {
  const SwitchWidget({Key? key, required this.settingController})
      : super(key: key);
  final SettingController settingController;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Switch(
      value: settingController.isDarkTheme,
      onChanged: (value) {
        ThemeController().changesTheme();
        settingController.isDarkTheme = value;
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
              settingController.isDarkTheme ? whiteColor : blackColor,
          snackPosition: SnackPosition.BOTTOM,
        );
      },
    );
  }
}
