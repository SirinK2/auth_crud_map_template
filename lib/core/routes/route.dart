import 'package:get/get.dart';

import '../../features/setting/view/screen/settings_screen.dart';
import '../binding/binding.dart';

class AppRoutes{

  static final routes = [
    GetPage(
        name: Routes.translation,
        page: ()=> const SettingScreen(),
      binding: Binding()
    ),
  ];
}

class Routes {
  static const translation = '/translation';

}