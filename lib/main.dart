import 'package:auth_crud_map_template/core/theme/theme.dart';
import 'package:auth_crud_map_template/features/auth/auth.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeApp.lightTheme,
      darkTheme:ThemeApp.darkTheme ,
      home: Auth()
    );
  }
}
