import 'package:auth_crud_map_template/core/constants/colors_app.dart';
import 'package:auth_crud_map_template/core/theme/controller/theme_controller.dart';
import 'package:auth_crud_map_template/home/controller/sitting_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DarkModeWidget extends StatelessWidget {
  const DarkModeWidget({Key? key, required this.sittingController})
      : super(key: key);
  final SittingController sittingController;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return GetBuilder<SittingController>(builder: (_) {
      return IconButton(
          icon: Icon(
            Get.isDarkMode ? Icons.dark_mode : Icons.light_mode,
            size: 30,
            color: Get.isDarkMode?whiteColor : blackColor,
          ),
          onPressed: () {
            ThemeController().changesTheme();
             sittingController.isDarkTheme = ThemeController().getThemeDataFromBox();
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
                  sittingController.isDarkTheme ? whiteColor : blackColor,
              snackPosition: SnackPosition.BOTTOM,
            );
          });
    });
  }
}
