import 'package:flutter/material.dart';
import 'package:jobizz/core/theming/app_themes/thme_light.dart';
import 'package:jobizz/jobizz/screens/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themeLight,
      home: const SplashScreen(),
    );
  }
}
