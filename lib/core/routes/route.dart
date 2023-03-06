import 'package:auth_crud_map_template/features/auth/view/screen/login_screen.dart';
import 'package:auth_crud_map_template/features/auth/view/screen/signup_screen.dart';
<<<<<<< HEAD
import 'package:auth_crud_map_template/features/profile/profile.dart';
=======
>>>>>>> 95eda9c (feat: add Auth ui)
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
<<<<<<< HEAD
        name: Routes.settingScreen,
=======
        name: Routes.translation,
>>>>>>> 95eda9c (feat: add Auth ui)
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
<<<<<<< HEAD
    GetPage(
        name: Routes.profileScreen,
        page: ()=>  const ProfileScreen(),
        binding: Binding()
    ),
=======
>>>>>>> 95eda9c (feat: add Auth ui)
  ];
}

class Routes {
  static const homeScreen = '/home_screen';
<<<<<<< HEAD
  static const settingScreen = '/setting_screen';
  static const loginScreen = '/login_screen';
  static const signScreen = '/signup_screen';
  static const profileScreen = '/profile_screen';
=======
  static const translation = '/translation';
  static const loginScreen = '/login_screen';
  static const signScreen = '/signup_screen';
>>>>>>> 95eda9c (feat: add Auth ui)

}