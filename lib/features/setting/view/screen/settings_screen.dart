import 'package:auth_crud_map_template/common/header_widget.dart';
import 'package:auth_crud_map_template/core/routes/route.dart';
import 'package:auth_crud_map_template/features/setting/widget/switch_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/setting_controller.dart';

class SettingScreen extends StatelessWidget {
  SettingScreen({super.key});

  final settingController = Get.find<SettingController>();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SettingController>(builder: (_) {
      return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              HeaderWidget(
                title: 'Setting',
                onPressed: () {
                  Get.offNamed(Routes.homeScreen);
                },
              ),
              Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  width: 390,
                  height: 300,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children:  <Widget>[
                         SwitchWidget(settingController: settingController,)
                      ]))
            ],
          ),
        ),
      );
    });
  }
}
//
// final controller = Get.find<LocalizationController>();
// String dropdownValue = controller.initialLanguage.toString();
//
// var items = [
//   'en',
//   'ar',
// ];
// return Scaffold(
//   appBar: AppBar(
//     title: Text("setting".tr),
//   ),
//   body: Container(
//     width: MediaQuery.of(context).size.width,
//     padding: const EdgeInsets.all(20),
//     child: Column(
//       crossAxisAlignment: CrossAxisAlignment.center,
//       children: [
//         Text(
//           "settingLanguage".tr,
//           style: const TextStyle(fontSize: 32),
//         ),
//         const SizedBox(
//           height: 50,
//         ),
// DropdownButton(
//   // Initial Value
//   value: dropdownValue,
//   // Down Arrow Icon
//   icon: const Icon(Icons.keyboard_arrow_down),
//   // Array list of items
//   items: items.map((String items) {
//     return DropdownMenuItem(
//       value: items,
//       child: Text(items),
//     );
//   }).toList(),
//   // After selecting the desired option,it will
//   // change button value to selected value
//   onChanged: (String? newValue) {
//     controller.changeLanguage(newValue!);
//   },
// ),
//       ],
//     ),
//   ),
// );
