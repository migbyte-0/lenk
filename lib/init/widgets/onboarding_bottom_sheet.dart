import 'package:flutter/material.dart';
import 'package:lenk/core/constants/constants_exports.dart';

import '../../features/auth/presentation/screens/login_screens.dart';

class OnboardingBottomSheet extends StatelessWidget {
  final PageController controller;
  final int currentPage;
  final VoidCallback onStartPressed;

  const OnboardingBottomSheet({
    super.key,
    required this.controller,
    required this.currentPage,
    required this.onStartPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        // Skip Button
        FloatingActionButton(
          onPressed: () {
            controller.jumpToPage(
                3); // Assuming there are 4 onboarding screens indexed 0-3
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const LoginScreen()));
          },
          backgroundColor: Colors.blue, // Set background color as needed
          foregroundColor: Theme.of(context).primaryColor,
          mini: true,
          child: const Text(AppTexts
              .skip), // Set to true to make it a mini floating action button
        ),
        // Dots Indicator
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              4, // Number of onboarding screens
              (index) => Container(
                margin: const EdgeInsets.symmetric(horizontal: 4),
                width: 8,
                height: 8,
                decoration: BoxDecoration(
                  color: currentPage == index
                      ? Theme.of(context).primaryColor
                      : Colors.grey[300],
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ),
        ),
        // Next Button
        FloatingActionButton.extended(
          onPressed: currentPage < 3
              ? () {
                  controller.nextPage(
                    duration: const Duration(milliseconds: 400),
                    curve: Curves.easeInOut,
                  );
                }
              : onStartPressed,
          label: Text(currentPage < 3 ? AppTexts.next : AppTexts.start),
          icon: currentPage < 3 ? const Icon(Icons.arrow_forward) : null,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
      ],
    );
  }
}
