import 'package:auth_crud_map_template/core/routes/route.dart';

import 'package:auth_crud_map_template/core/theme/theme.dart';
import 'package:auth_crud_map_template/features/auth/auth.dart';

import 'package:auth_crud_map_template/core/routes/route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'core/localization/translations/translations_map.dart';
import 'features/setting/controllers/localization_controller.dart';

void main() async {
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final controller = Get.put(LocalizationController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      locale: controller.initialLanguage,
      translations: TranslationsMap(),
      theme: ThemeApp.lightTheme,
      darkTheme:ThemeApp.darkTheme ,
      initialRoute: Routes.translation,
      getPages: AppRoutes.routes,
    );
  }
}
