import 'package:flutter/material.dart';
import 'package:park_lion/features/splash/presentation/widgets/ui_body_splash.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(backgroundColor: Colors.white, body: UiBodySplash());
  }
}
