import 'package:auth_crud_map_template/core/localization/controller/locale_controller.dart';
import 'package:auth_crud_map_template/core/routes/route.dart';
import 'package:auth_crud_map_template/core/theme/controller/theme_controller.dart';
import 'package:auth_crud_map_template/core/theme/theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'core/localization/translations/translations_map.dart';
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

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      locale: LocaleController().initialLanguage,
      translations: TranslationsMap(),
      themeMode: ThemeController().themeDataGet,
      theme: ThemeApp.lightTheme,
      darkTheme: ThemeApp.darkTheme,
      initialRoute: Routes.homeScreen,
      getPages: AppRoutes.routes,
    );
  }
}
