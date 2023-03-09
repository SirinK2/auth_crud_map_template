import 'package:auth_crud_map_template/core/constants/app_image.dart';
import 'package:auth_crud_map_template/core/constants/colors_app.dart';
import 'package:auth_crud_map_template/features/profile/controller/profile_conroller.dart';
import 'package:flutter/material.dart';

class ProfileHeaderWidget extends StatelessWidget {
  const ProfileHeaderWidget(
      {Key? key,
      required this.profileController,
      required this.name,
      required this.email})
      : super(key: key);
  final ProfileController profileController;
  final String name;
  final String email;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Align(
      alignment: Alignment.center,
      child: Column(
        children: [
          Stack(children: [
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: lightColor,
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: profileController.profilePhoto.value == ""
                      ? AssetImage(AppImages.profileImage) as ImageProvider
                      : NetworkImage(
                          profileController.profilePhoto.value,
                        ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
                top: 70,
                left: 60,
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: const BoxDecoration(
                      color: blackColor,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.flip_camera_ios_outlined,
                      color: whiteColor,
                      size: 18,
                    ),
                  ),
                ))
          ]),
          const SizedBox(
            height: 10,
          ),
          const SizedBox(
            width: 30,
          ),
          Text(
            name,
            style: theme.headlineLarge,
          ),
          Text(
            email,
            style: theme.headlineSmall,
          ),
        ],
      ),
    );
  }
}
