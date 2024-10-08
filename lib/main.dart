import 'package:flutter/material.dart';
import 'package:re_sell_app/features/auth/login_page.dart';
import 'package:re_sell_app/features/utils/themes/light_mode.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightMode,
      home: const LoginPage(),
    );
  }
}
