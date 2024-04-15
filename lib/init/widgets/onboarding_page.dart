import 'package:flutter/material.dart';
import 'package:lenk/core/constants/app_text_styles.dart';
import 'package:lottie/lottie.dart';

class OnboardingPage extends StatelessWidget {
  final String lottieAsset;
  final String title;
  final String description;

  const OnboardingPage(this.lottieAsset, this.title, this.description,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Lottie.asset(lottieAsset, width: 150, height: 150, repeat: false),
        const SizedBox(
          height: 30,
        ),
        Text(title, style: Styles.style25),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(description,
              textAlign: TextAlign.center, style: Styles.style18),
        ),
      ],
    );
  }
}
