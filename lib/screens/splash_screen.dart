import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shamo/common/theme.dart';
import 'package:shamo/screens/sign_in_screen.dart';

class SplashScreen extends StatefulWidget {
  static const route = '/';
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    Timer(const Duration(seconds: 3), () => Navigator.pushNamed(context, SignInScreen.route));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg1Color,
      body: Center(
        child: Container(
          height: 150,
          width: 130,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/image_splash.png')
            )
          ),
        ),
      ),
    );
  }
}