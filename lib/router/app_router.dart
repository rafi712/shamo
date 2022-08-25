import 'package:flutter/material.dart';
import 'package:shamo/screens/home/main_screen.dart';
import 'package:shamo/screens/sign_in_screen.dart';
import 'package:shamo/screens/sign_up_screen.dart';
import 'package:shamo/screens/splash_screen.dart';

class AppRouter {
  static Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => const SplashScreen());
      case '/sign-in':
        return MaterialPageRoute(builder: (context) => const SignInScreen());
      case '/sign-up':
        return MaterialPageRoute(builder: (context) => const SignUpScreen());
      case '/home':
        return MaterialPageRoute(builder: (context) => const MainScreen());
      default:
        return MaterialPageRoute(builder: (context) => const SignInScreen());
    }
  }
}