import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:auth_crud_map_template/core/routes/route.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      child: const Text(
                        'Authentication',
                      )),
                  const SizedBox(height: 10),
                  ElevatedButton(
                      onPressed: () {},
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
