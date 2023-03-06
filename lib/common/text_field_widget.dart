import 'package:auth_crud_map_template/core/constants/colors_app.dart';
import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final TextEditingController controller;
  final bool obscureText;
  final Function validator;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String label;
  final String? numCode;

  const TextFieldWidget({
    required this.controller,
    required this.obscureText,
    required this.validator,
    this.prefixIcon,
    this.numCode,
    this.suffixIcon,
    Key? key,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 382,
        child: TextFormField(
          style: Theme.of(context).textTheme.titleSmall ,
          controller: controller,
          obscureText: obscureText,
          cursorColor: orangeColor,
          keyboardType: TextInputType.text,
          validator: (value) => validator(value),
          decoration: InputDecoration(
            labelStyle: Theme.of(context).textTheme.bodySmall,
            labelText: label,
            prefixIcon: prefixIcon,
            prefixText: numCode,
            suffixIcon: suffixIcon,
          ),
        ));
  }
}
