import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({Key? key, required this.onPressed}) : super(key: key);
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading:IconButton(onPressed: onPressed, icon: const Icon(Icons.arrow_back_ios_new)
    ));
  }
}
