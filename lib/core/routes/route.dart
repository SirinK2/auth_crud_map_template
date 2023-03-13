import 'package:auth_crud_map_template/features/auth/view/screen/forgot_password_screen.dart';
import 'package:auth_crud_map_template/features/auth/view/screen/login_screen.dart';
import 'package:auth_crud_map_template/features/auth/view/screen/login_with_phone_screen.dart';
import 'package:auth_crud_map_template/features/auth/view/screen/otp_phone_screen.dart';
import 'package:auth_crud_map_template/features/auth/view/screen/signup_screen.dart';
import 'package:auth_crud_map_template/features/auth/view/screen/successfully_screen.dart';
import 'package:auth_crud_map_template/features/auth/view/screen/terms_and_conditions_screen.dart';
import 'package:auth_crud_map_template/features/crud/view/screen/shop_screen.dart';
import 'package:auth_crud_map_template/features/profile/view/screen/new_pasword_screen.dart';
import 'package:auth_crud_map_template/features/profile/view/screen/perssonal_information.dart';
import 'package:auth_crud_map_template/home/view/screen/home_screen.dart';
import 'package:get/get.dart';
import '../../features/profile/view/screen/profile_screen.dart';
import '../binding/binding.dart';

class AppRoutes {
  static final routes = [
    GetPage(
      name: Routes.homeScreen,
      page: () =>  HomeScreen(),
      binding: Binding()
    ),
    GetPage(
        name: Routes.loginScreen,
        page: () => LoginScreen(),
        binding: Binding()),
    GetPage(
        name: Routes.signScreen,
        page: () => SignUpScreen(),
        binding: Binding()),
    GetPage(
        name: Routes.profileScreen,
        page: () => ProfileScreen(),
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
    GetPage(
        name: Routes.logInWithPhoneScreen,
        page: () => LogInWithPhoneScreen(),
        binding: Binding()),
    GetPage(
        name: Routes.personalInformation,
        page: () =>  PersonalInformationScreen(),
        binding: Binding()),
    GetPage(
        name: Routes.shopScreen,
        page: () =>  ShopScreen(),
        binding: Binding()),
  ];
}

class Routes {
  static const homeScreen = '/home_screen';
  static const loginScreen = '/login_screen';
  static const signScreen = '/signup_screen';
  static const forgotPasswordScreen = '/forgot_password_screen';
  static const termsAndConditions = '/terms_and_conditions_screen';
  static const otpPhoneScreen = '/otp_phone_screen';
  static const newPasswordScreen = '/new_password_screen';
  static const successfullyScreen = '/successfully_screen';
  static const profileScreen = '/profile_screen';
  static const logInWithPhoneScreen = '/login_with_phone_screen';
  static const personalInformation = '/personal_information';
  static const shopScreen = '/shop_screen';

}
