import 'package:auth_crud_map_template/features/auth/view/screen/forgot_password_screen.dart';
import 'package:auth_crud_map_template/features/auth/view/screen/login_screen.dart';
import 'package:auth_crud_map_template/features/auth/view/screen/login_with_phone_screen.dart';
import 'package:auth_crud_map_template/features/auth/view/screen/new_pasword_screen.dart';
import 'package:auth_crud_map_template/features/auth/view/screen/otp_phone_screen.dart';
import 'package:auth_crud_map_template/features/auth/view/screen/signup_screen.dart';
<<<<<<< HEAD
<<<<<<< HEAD
import 'package:auth_crud_map_template/features/profile/profile.dart';
=======
>>>>>>> 95eda9c (feat: add Auth ui)
=======
import 'package:auth_crud_map_template/features/auth/view/screen/successfully_screen.dart';
import 'package:auth_crud_map_template/features/auth/view/screen/terms_and_conditions_screen.dart';
>>>>>>> 11e2e2d (enh: add all the ui for auth feat)
import 'package:auth_crud_map_template/home_screen.dart';
import 'package:get/get.dart';
import '../../features/profile/view/screen/profile_screen.dart';
import '../../features/setting/view/screen/settings_screen.dart';
import '../binding/binding.dart';

class AppRoutes {
  static final routes = [
    GetPage(
      name: Routes.homeScreen,
      page: () => const HomeScreen(),
    ),
    GetPage(
<<<<<<< HEAD
        name: Routes.settingScreen,
=======
        name: Routes.translation,
<<<<<<< HEAD
>>>>>>> 95eda9c (feat: add Auth ui)
        page: ()=> const SettingScreen(),
      binding: Binding()
    ),
=======
        page: () => const SettingScreen(),
        binding: Binding()),
>>>>>>> 11e2e2d (enh: add all the ui for auth feat)
    GetPage(
        name: Routes.loginScreen,
        page: () => LoginScreen(),
        binding: Binding()),
    GetPage(
        name: Routes.signScreen,
<<<<<<< HEAD
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
=======
        page: () => SignUpScreen(),
        binding: Binding()),
    GetPage(
        name: Routes.forgotPasswordScreen,
        page: () => ForgotPasswordScreen(),
        binding: Binding()),
    GetPage(
        name: Routes.termsAndConditions,
        page: () => const TermsAndConditionsScreen(),
        binding: Binding()),
    GetPage(
        name: Routes.otpPhoneScreen,
        page: () => OtpPhoneScreen(),
        binding: Binding()),
    GetPage(
        name: Routes.newPasswordScreen,
        page: () => NewPasswordScreen(),
        binding: Binding()),
    GetPage(
        name: Routes.successfullyScreen,
        page: () => const SuccessfullyScreen(),
        binding: Binding()),
<<<<<<< HEAD
>>>>>>> 11e2e2d (enh: add all the ui for auth feat)
=======
    GetPage(
        name: Routes.profileScreen,
        page: () => ProfileScreen(),
        binding: Binding()),
    GetPage(
        name: Routes.logInWithPhoneScreen,
        page: () => LogInWithPhoneScreen(),
        binding: Binding()),
<<<<<<< HEAD
>>>>>>> 8c30965 (enh: add all the ui for auth feat)
=======

>>>>>>> d03e80e (fix: conflict)
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
<<<<<<< HEAD
>>>>>>> 95eda9c (feat: add Auth ui)

}
=======
  static const forgotPasswordScreen = '/forgot_password_screen';
  static const termsAndConditions = '/terms_and_conditions_screen';
  static const otpPhoneScreen = '/otp_phone_screen';
  static const newPasswordScreen = '/new_password_screen';
  static const successfullyScreen = '/successfully_screen';
  static const profileScreen = '/profile_screen';
  static const logInWithPhoneScreen = '/login_with_phone_screen';
}
<<<<<<< HEAD
>>>>>>> 11e2e2d (enh: add all the ui for auth feat)
=======

>>>>>>> d03e80e (fix: conflict)
