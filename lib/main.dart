import 'package:flutter/material.dart';
import 'package:responsi/pages/dashboard_page.dart';
import 'package:responsi/pages/edit_profile_page.dart';
import 'package:responsi/pages/forget_password_page.dart';
import 'package:responsi/pages/login_page.dart';
import 'package:responsi/pages/register_page.dart';
import 'package:responsi/pages/splashscreen_page.dart';
import 'package:responsi/utils/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
        scaffoldBackgroundColor: backgroundColor,
        colorScheme: ColorScheme.fromSeed(seedColor: primaryColor),
        useMaterial3: true,
      ),
      home: const SplashscreenPage(),
      initialRoute: '/splashscreen',
      routes: {
        '/splashscreen': (context) => const SplashscreenPage(),
        '/login': (context) => const LoginPage(),
        '/register': (context) => const RegisterPage(),
        '/forget-password': (context) => const ForgetPasswordPage(),
        '/dashboard': (context) => const DashboardPage(),
        '/edit-profile': (context) => const EditProfilePage(),
      },
    );
  }
}
