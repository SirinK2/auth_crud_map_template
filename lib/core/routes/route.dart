import 'package:auth_crud_map_template/features/auth/view/screen/login_screen.dart';
import 'package:auth_crud_map_template/features/auth/view/screen/signup_screen.dart';
import 'package:auth_crud_map_template/home_screen.dart';
import 'package:get/get.dart';

import '../../features/setting/view/screen/settings_screen.dart';
import '../binding/binding.dart';

class AppRoutes{

  static final routes = [
    GetPage(
        name: Routes.homeScreen,
        page: ()=> const HomeScreen(),
    ),
    GetPage(
        name: Routes.translation,
        page: ()=> const SettingScreen(),
      binding: Binding()
    ),
    GetPage(
        name: Routes.loginScreen,
        page: ()=>  LoginScreen(),
        binding: Binding()
    ),
    GetPage(
        name: Routes.signScreen,
        page: ()=>  SignUpScreen(),
        binding: Binding()
    ),
  ];
}

class Routes {
  static const homeScreen = '/home_screen';
  static const translation = '/translation';
  static const loginScreen = '/login_screen';
  static const signScreen = '/signup_screen';

}