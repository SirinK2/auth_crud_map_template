import 'package:auth_crud_map_template/features/auth/controller/auth_controller.dart';
import 'package:get/get.dart';
import '../../features/setting/controllers/localization_controller.dart';


class Binding implements Bindings{
  @override
  void dependencies() {
   Get.put(LocalizationController());
  Get.put(AuthController());
  }

}