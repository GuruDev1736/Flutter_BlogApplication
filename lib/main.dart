import 'package:flutter/material.dart';
import 'package:flutter_application_1/Features/Auth/Presentation/pages/login_page.dart';
import 'package:flutter_application_1/core/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter App",
      theme: AppTheme.darkThemeMode,
      home: const LoginPage(),
    );
  }
}
