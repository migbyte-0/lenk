import 'package:flutter/material.dart';
import 'package:lenk/features/auth/presentation/screens/login_screens.dart';
import 'package:lenk/init/widgets/on_boarding_widget.dart';

import '../../core/constants/app_text.dart';
import '../widgets/onboarding_bottom_sheet.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController(initialPage: 0);
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent, // Add this line

      body: Directionality(
        textDirection: TextDirection.rtl,
        child: PageView(
          controller: _controller,
          onPageChanged: (int page) {
            setState(() {
              _currentPage = page;
            });
          },
          children: <Widget>[
            const OnboardingWidget(
              title: AppTexts.welcome,
              description: AppTexts.welcomeDesc,
              imagePath: 'lib/assets/json/animations/animated_logo.json',
              svgPath: 'lib/assets/images/style/blob_one.svg',
            ), // Changed class name
            const OnboardingWidget(
              title: AppTexts.onBoardingTitleOne,
              description: AppTexts.onBoardingDescOne,
              imagePath: 'lib/assets/json/animations/onboarding_one.json',
              svgPath: 'lib/assets/images/style/blob_two.svg',
            ), // Changed class name
            const OnboardingWidget(
              title: AppTexts.onBoardingTitleTwo,
              description: AppTexts.onBoardingDescTwo,
              imagePath: 'lib/assets/json/animations/onboarding_two.json',
              svgPath: 'lib/assets/images/style/blob_three.svg',
            ), // Changed class name
            InkWell(
              onTap: () {},
              child: const OnboardingWidget(
                title: AppTexts.enter,
                description: AppTexts.onBoardingDescThree,
                imagePath: 'lib/assets/json/animations/onboarding_three.json',
                svgPath: 'lib/assets/images/style/blob_four.svg',
              ),
            ), // Changed class name
          ],
        ),
      ),
      bottomSheet: OnboardingBottomSheet(
        controller: _controller,
        currentPage: _currentPage,
        onStartPressed: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const LoginScreen()));
        },
      ),
    );
  }
}
