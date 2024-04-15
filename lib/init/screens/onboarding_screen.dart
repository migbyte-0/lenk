import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lenk/core/constants/constants_exports.dart';
import 'package:lenk/core/shared/widgets/decorators/background_shapes.dart';
import 'package:lenk/core/shared/widgets/decorators/index.dart';
import 'package:lenk/features/auth/presentation/screens/login_screens.dart';

import '../widgets/onboarding_page.dart';
import '../widgets/page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int _currentPage = 0;
  final PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          ClipPath(
            clipper: UpperWaveClipper(),
            child: const GradientContainer(
                myHeight: 250,
                firstGradientColor: AppColors.primaryColor,
                secondGradientColor: AppColors.secondaryColor),
          ),
          BackgroundShapes(
            backgroundColor: AppColors.primaryColor.withOpacity(0.1),
          ),
          Positioned(
            left: 500,
            child: BackgroundShapes(
              backgroundColor: AppColors.primaryColor.withOpacity(0.1),
              height: 150,
              width: 150,
            ),
          ),
          Positioned(
            left: 700,
            top: 100,
            child: BackgroundShapes(
              backgroundColor: AppColors.primaryColor.withOpacity(0.1),
              height: 250,
              width: 250,
            ),
          ),
          PageView(
            controller: _pageController,
            onPageChanged: (int page) {
              setState(() {
                _currentPage = page;
              });
            },
            children: const <Widget>[
              OnboardingPage("lib/assets/json/animations/animated_logo.json",
                  AppTexts.welcome, AppTexts.welcomeDesc),
              OnboardingPage("lib/assets/json/animations/onboarding_one.json",
                  AppTexts.onBoardingTitleOne, AppTexts.onBoardingDescOne),
              OnboardingPage("lib/assets/json/animations/onboarding_two.json",
                  AppTexts.onBoardingTitleTwo, AppTexts.onBoardingDescTwo),
              OnboardingPage("lib/assets/json/animations/onboarding_three.json",
                  AppTexts.onBoardingTitleThree, AppTexts.start)
            ],
          ),
          Positioned(
            bottom: 20,
            left: 0,
            right: 0,
            child: Column(
              children: <Widget>[
                PageIndicator(_currentPage, 4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    FloatingActionButton(
                      onPressed: () => _pageController.jumpToPage(3),
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50))),
                      child: const Icon(Icons.skip_next),
                    ),
                    FloatingActionButton.large(
                      onPressed: () {
                        if (_currentPage < 3) {
                          _pageController.animateToPage(_currentPage + 1,
                              duration: const Duration(milliseconds: 400),
                              curve: Curves.easeInOut);
                        } else {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const LoginScreen(),
                            ),
                          );
                        }
                      },
                      backgroundColor: Colors.blue,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50))),
                      heroTag: null,
                      child: const Icon(
                        Icons.navigate_next,
                        size: 70,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
