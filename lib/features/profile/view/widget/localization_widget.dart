import '../../logic/controller/profile_conroller.dart';
import 'package:flutter/material.dart';

class LocalizationWidget extends StatelessWidget {
  const LocalizationWidget({Key? key, required this.profileController})
      : super(key: key);
  final ProfileController profileController;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('عربي'),
            Switch(
              value: profileController.changeLanguage,
              onChanged: (value) {},
            ),
          ],
        ),
        const Divider(
          thickness: 1,
        ),
      ],
    );
  }
}

