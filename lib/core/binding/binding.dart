import 'package:get/get.dart';
import '../../features/auth/logic/controller/auth_controller.dart';
import '../../features/profile/logic/controller/profile_conroller.dart';

class Binding implements Bindings {
  @override
  void dependencies() {
    Get.put(AuthController());
    Get.lazyPut(() => ProfileController());
  }
}
