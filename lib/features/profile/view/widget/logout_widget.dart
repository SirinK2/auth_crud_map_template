import 'package:flutter/material.dart';

class LogOutWidget extends StatelessWidget {
  const LogOutWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return   InkWell(
      onTap: () {},
      child: Row(
        children: [
          Text(
            'Log Out',
            style: theme.headlineMedium,
          ),
          const SizedBox(
            width: 10,
          ),
          const Icon(
            Icons.logout,
          )
        ],
      ),
    );
  }
}
