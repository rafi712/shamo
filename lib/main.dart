import 'package:flutter/material.dart';
import 'package:shamo/router/app_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shamo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      onGenerateRoute: AppRouter.onGenerateRoute,
      initialRoute: '/',
    );
  }
}

