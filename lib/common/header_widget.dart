import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../core/routes/route.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({Key? key, required this.onPressed, this.title})
      : super(key: key);
  final Function() onPressed;
  final String? title;
  @override
  Widget build(BuildContext context) {
    return AppBar(
        title: Text(
          title != null ? title! : '',
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        actions: [
          IconButton(
              onPressed: () {
                Get.offNamed(Routes.settingScreen);
              },
              icon: const Icon(Icons.settings))
        ],
        leading: IconButton(
            onPressed: onPressed, icon: const Icon(Icons.arrow_back_ios_new)));
  }
}
