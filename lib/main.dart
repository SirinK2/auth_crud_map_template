<<<<<<< HEAD
import 'package:auth_crud_map_template/core/routes/route.dart';
=======
import 'package:auth_crud_map_template/core/theme/theme.dart';
import 'package:auth_crud_map_template/features/auth/auth.dart';
>>>>>>> f6b18b3 (feat: add theme app)
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
<<<<<<< HEAD
      locale: controller.initialLanguage,
      translations: TranslationsMap(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: Routes.translation,
      getPages: AppRoutes.routes,
=======
      theme: ThemeApp.lightTheme,
      darkTheme:ThemeApp.darkTheme ,
      home: Auth()
>>>>>>> f6b18b3 (feat: add theme app)
    );
  }
}
