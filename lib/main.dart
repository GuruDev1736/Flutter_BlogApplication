import 'package:blog_application/Core/Theme/theme.dart';
import 'package:blog_application/Features/Auth/Presentation/Pages/SignUp.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Blog Application',
      theme: AppTheme.darkThemeMode,
      home: const Signup(),
    );
  }
}
