import 'package:auth_crud_map_template/core/constants/colors_app.dart';
import 'package:flutter/material.dart';

class CheckBoxWidget extends StatelessWidget {
  const CheckBoxWidget(
      {Key? key,
      required this.value,
      required this.onChanged,
      required this.title,
      this.supTitle})
      : super(key: key);
  final ValueChanged<bool?> onChanged;
  final bool value;
  final String title;
  final String? supTitle;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Checkbox(
          checkColor: whiteColor,
          value: value,
          onChanged: onChanged,
        ),
        Text(
          title,
          style: textTheme.headlineSmall,
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            supTitle!,
            style: textTheme.bodyMedium,
          ),
        )
      ],
    );
  }
}
