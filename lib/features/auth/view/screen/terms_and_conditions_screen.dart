import 'package:auth_crud_map_template/common/header_widget.dart';
import 'package:auth_crud_map_template/core/constants/colors_app.dart';
import 'package:auth_crud_map_template/core/routes/route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TermsAndConditionsScreen extends StatelessWidget {
  const TermsAndConditionsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Align(
            alignment: Alignment.center,
            child: SizedBox(
                width: 390,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      HeaderWidget(
                        onPressed: () {
                          Get.offNamed(Routes.loginScreen);
                        },
                      ),
                      const SizedBox(height: 50),
                      Container(
                        color: mainColor,
                      )
                    ]))));
  }
}
