import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lenk/core/constants/app_colors.dart';
import 'package:lenk/core/shared/widgets/decorators/gradient_icon.dart';
import 'package:lottie/lottie.dart';

import '../../core/shared/widgets/decorators/gradient_container_widget.dart';

class OnboardingWidget extends StatelessWidget {
  final String title;
  final String description;
  final String imagePath; // Path to your image
  final String svgPath; // Path to your image

  const OnboardingWidget({
    super.key,
    required this.title,
    required this.description,
    required this.imagePath, // Require an image path in the constructor
    required this.svgPath, // Require an image path in the constructor
  });

  @override
  Widget build(BuildContext context) {
    return GradientContainer(
      myChild: Stack(
        alignment: Alignment.center, // Center the stack contents
        children: <Widget>[
          GradientIcon(
            firstGradientColor: Colors.white,
            secondGradientColor: Colors.white,
            myChild: SvgPicture.asset(
              svgPath, // Your cloud SVG asset
              fit: BoxFit.cover,
              height: 500,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              LottieBuilder.asset(
                imagePath,
                width: 200,
                height: 200,
                repeat: false,
              ), // Your image on top of the cloud
              Text(title,
                  style: const TextStyle(
                      fontSize: 24, fontWeight: FontWeight.bold)),
              const SizedBox(height: 20),
              Text(description, textAlign: TextAlign.center),
            ],
          ),
        ],
      ),
      firstGradientColor: AppColors.thirdColor,
      secondGradientColor: AppColors.secondaryColor,
    );
  }
}
