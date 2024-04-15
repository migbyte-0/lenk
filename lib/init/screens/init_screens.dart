import 'package:flutter/material.dart';
import 'package:lenk/init/screens/onboarding_screen.dart';

class InitScreens extends StatelessWidget {
  const InitScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Colors.transparent, body: OnboardingScreen());
  }
}
