import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_dummy/core/config/assets/app_vectors.dart';
import 'package:spotify_dummy/presentation/intro/pages/get_started.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double _opacity = 1.0;

  @override
  void initState() {
    super.initState();
    _startFadeOutAndRedirect();
  }

  Future<void> _startFadeOutAndRedirect() async {
    await Future.delayed(const Duration(seconds: 2));
    setState(() {
      _opacity = 0.0;
    });
    await Future.delayed(const Duration(seconds: 1));
    if (mounted) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const GetStarted(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedOpacity(
          opacity: _opacity,
          duration: const Duration(seconds: 1),
          child: SvgPicture.asset(AppVectors.spotifyLogo),
        ),
      ),
    );
  }
}
