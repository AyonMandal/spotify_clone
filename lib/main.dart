import 'package:flutter/material.dart';
import 'package:spotify_dummy/core/config/theme/app_theme.dart';
import 'package:spotify_dummy/presentation/splash/page/splash.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: const SplashScreen(),
    );
  }
}
