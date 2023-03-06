import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  HeaderWidget({Key? key, required this.onPressed}) : super(key: key);
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading:IconButton(onPressed: onPressed, icon: Icon(Icons.arrow_back_ios_new)
    ));
  }
}
