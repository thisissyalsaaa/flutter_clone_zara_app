import 'package:flutter/material.dart';
import 'package:flutter_clone_zara_app/app/config/routers/app_router.dart';
import 'package:flutter_clone_zara_app/app/config/themes/app_themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Clone ZARA',
      routerConfig: AppRouter.router(),
      theme: appTheme(),
    );
  }
}
