import 'package:auth_crud_map_template/common/header_widget.dart';
import 'package:auth_crud_map_template/common/text_field_widget.dart';
import 'package:auth_crud_map_template/core/routes/route.dart';
import 'package:auth_crud_map_template/features/profile/controller/profile_conroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersonalInformationScreen extends StatelessWidget {
  PersonalInformationScreen({Key? key}) : super(key: key);

  final profileController = Get.find<ProfileController>();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return GetBuilder<ProfileController>(builder: (_) {
      return Scaffold(
        body: SingleChildScrollView(
          child: Column(children: [
            HeaderWidget(
              onPressed: () {
                Get.offNamed(Routes.profileScreen);
              },
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              width: 390,
              height: 450,
              child: Column(
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
                  ]),
            ),
          ]),
        ),
      );
    });
  }
}
