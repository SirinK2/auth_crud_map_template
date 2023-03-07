import 'package:auth_crud_map_template/core/routes/route.dart';
import 'package:auth_crud_map_template/core/theme/theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:auth_crud_map_template/features/auth/view/screen/signup_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'core/localization/translations/translations_map.dart';
import 'features/setting/controllers/localization_controller.dart';
import 'firebase_options.dart';

void main() async {
  await GetStorage.init();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
      darkTheme: ThemeApp.darkTheme,
      initialRoute: Routes.homeScreen,
      getPages: AppRoutes.routes,
    );
  }
}
