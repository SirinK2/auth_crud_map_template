import 'package:auth_crud_map_template/common/text_field_widget.dart';
import 'package:auth_crud_map_template/core/routes/route.dart';
import '../../logic/controller/profile_conroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersonalInformationWidget extends StatelessWidget {
  const PersonalInformationWidget({Key? key, required this.profileController}) : super(key: key);
  final ProfileController profileController;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          const SizedBox(height: 50),
          Text(
            'Personal Information',
            style: theme.bodyLarge,
          ),
          const SizedBox(height: 50),
          TextFieldWidget(
            controller: profileController.nameController,
            obscureText: false,
            validator: (value) {},
            prefixIcon: const Icon(
              Icons.person,
            ),
            label: 'Name',
          ),
          TextFieldWidget(
            enabled: false,
            controller: profileController.emailController,
            obscureText: false,
            validator: (value) {},
            prefixIcon: const Icon(
              Icons.email,
            ),
            label: 'Email',
          ),
          TextFieldWidget(
            enabled: false,
            controller: profileController.phoneController,
            obscureText: false,
            validator: (value) {},
            prefixIcon: const Icon(
              Icons.phone_android,
            ),
            label: 'Phone Number',
          ),
          ElevatedButton(
              onPressed: () {}, child: const Text('Update')),
          Align(
              alignment: Alignment.topLeft,
              child: TextButton(
                onPressed: () {
                  Get.offNamed(Routes.newPasswordScreen);
                },
                child: Text('Change Your Password',
                    style: theme.headlineSmall),
              )),
        ]);
  }
}
