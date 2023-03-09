import 'package:auth_crud_map_template/features/profile/controller/profile_conroller.dart';
import 'package:get/get.dart';
import '../../features/auth/logic/controller/auth_controller.dart';

class Binding implements Bindings {
  @override
  void dependencies() {
    Get.put(AuthController());
    Get.put(ProfileController());
  }
}
