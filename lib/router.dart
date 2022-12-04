import 'package:doctor_app/screen/auth/login_screen.dart';
import 'package:doctor_app/screen/auth/register_screen.dart';
import 'package:doctor_app/screen/main/home_page.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case LoginScreen.routeName:
      return MaterialPageRoute(
        builder: (_) => const LoginScreen(),
      );
    case HomeScreen.routeName:
      return MaterialPageRoute(builder: (_) => const HomeScreen());
    case RegisterScreen.routeName:
      return MaterialPageRoute(
        builder: (_) => const RegisterScreen(),
      );
    default:
      return MaterialPageRoute(
        builder: (_) => const LoginScreen(),
      );
  }
}
