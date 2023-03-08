import 'package:auth_crud_map_template/core/constants/colors_app.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInWithWidget extends StatelessWidget {
  final String text;
  final Function() onPressed;
  final String images;

  const SignInWithWidget(
      {required this.onPressed,
      required this.text,
      Key? key,
      required this.images})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 41,
      width: 382,
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
              minimumSize: const Size(382, 41),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              foregroundColor: whiteColor,
              elevation: 0.4,
              backgroundColor: whiteColor,
              side: const BorderSide(color: orangeColor),
              padding: const EdgeInsets.symmetric(vertical: 2)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 15, width: 15, child: Image.asset(images)),
              SizedBox(width: Get.height * 0.01),
              Text(text, style: Theme.of(context).textTheme.bodySmall),
            ],
          )),
    );
  }
}
