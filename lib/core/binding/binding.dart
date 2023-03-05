import 'package:get/get.dart';
import '../../features/setting/controllers/localization_controller.dart';


class Binding implements Bindings{
  @override
  void dependencies() {
   Get.put(LocalizationController());
  }

}