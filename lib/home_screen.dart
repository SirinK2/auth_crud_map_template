import 'package:auth_crud_map_template/common/header_widget.dart';
import 'package:auth_crud_map_template/core/constants/colors_app.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:auth_crud_map_template/core/routes/route.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
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
                      child: Text(
                        'Authentication',
                      )),
                  const SizedBox(height: 10),
                  ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Profile',
                      )),
                  const SizedBox(height: 10),
                  ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Crud',
                      )),
                  const SizedBox(height: 10),
                  ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Current location',
                      )),
                ],
              ),
            )));
  }
}
