import 'package:auth_crud_map_template/home/controller/home_controller.dart';
import 'package:auth_crud_map_template/home/view/widget/darkmode_widget.dart';
import 'package:auth_crud_map_template/home/view/widget/localization_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:auth_crud_map_template/core/routes/route.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  final sittingController = Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(actions:  [
          DarkModeWidget(sittingController:sittingController),
          LocalizationWidget(sittingController:sittingController)
        ]),
        body: Align(
            alignment: Alignment.center,
            child: SizedBox(
              width: 390,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ElevatedButton(
                      onPressed: () {
                        Get.offNamed(Routes.loginScreen);
                      },
                      child: const Text('Authentication')),
                  const SizedBox(height: 10),
                  ElevatedButton(
                      onPressed: () {
                        Get.offNamed(Routes.profileScreen);
                      },
                      child: const Text(
                        'Profile',
                      )),
                  const SizedBox(height: 10),
                  ElevatedButton(
                      onPressed: () {},
                      child: const Text(
                        'Crud',
                      )),
                  const SizedBox(height: 10),
                  ElevatedButton(
                      onPressed: () {},
                      child: const Text(
                        'Current location',
                      )),
                ],
              ),
            )));
  }
}
