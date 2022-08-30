import 'package:flutter/material.dart';
import 'package:shamo/screens/detail_chat_screen.dart';
import 'package:shamo/screens/home/main_screen.dart';
import 'package:shamo/screens/sign_in_screen.dart';
import 'package:shamo/screens/sign_up_screen.dart';
import 'package:shamo/screens/splash_screen.dart';

class AppRouter {
  static Route? onGenerateRoute(RouteSettings settings) {    
    switch (settings.name) {
      case SplashScreen.route:
        return MaterialPageRoute(builder: (context) => const SplashScreen());
      case SignInScreen.route:
        return MaterialPageRoute(builder: (context) => const SignInScreen());
      case SignUpScreen.route:
        return MaterialPageRoute(builder: (context) => const SignUpScreen());
      case MainScreen.route:
        return MaterialPageRoute(builder: (context) => const MainScreen());
      case DetailChatScreen.route:
        return MaterialPageRoute(builder: (context) => const DetailChatScreen());
      default:
        return MaterialPageRoute(builder: (context) => const SignInScreen());
    }
  }
}