import 'package:auth_crud_map_template/home/controller/sitting_controller.dart';
import 'package:get/get.dart';
import '../../features/auth/logic/controller/auth_controller.dart';

class Binding implements Bindings {
  @override
  void dependencies() {
    Get.put(AuthController());
    // Get.lazyPut(ProfileController() as InstanceBuilderCallback);
    Get.put(SittingController());
  }
}
