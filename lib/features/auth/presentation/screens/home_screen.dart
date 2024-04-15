import 'package:flutter/material.dart';
import 'package:lenk/core/constants/constants_exports.dart';
import 'package:lenk/core/shared/widgets/style/custom_field.dart';
import 'package:lenk/features/history/presentation/screens/history_screens.dart';
import 'package:lenk/features/profile/presentation/screens/profile_screens.dart';

import '../../../../core/shared/widgets/decorators/background_shapes.dart';
import '../../../../core/shared/widgets/decorators/index.dart';
import '../../../../core/shared/widgets/decorators/middle_wave_clipper.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Stack(
        children: [
          ClipPath(
            clipper: LowerWaveClipper(),
            child: const GradientContainer(
                myHeight: 200,
                firstGradientColor: AppColors.primaryColor,
                secondGradientColor: AppColors.secondaryColor),
          ),
          ClipPath(
            clipper: MiddleWaveClipper(),
            child: const GradientContainer(
                myHeight: 250,
                firstGradientColor: AppColors.appTeal,
                secondGradientColor: AppColors.secondaryColor),
          ),
          ClipPath(
            clipper: UpperWaveClipper(),
            child: const GradientContainer(
                myHeight: 350,
                firstGradientColor: AppColors.infoColor,
                secondGradientColor: AppColors.secondaryColor),
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
            left: 800,
            child: BackgroundShapes(
              backgroundColor: AppColors.primaryColor.withOpacity(0.1),
              height: 80,
              width: 80,
            ),
          ),
          Positioned(
            left: 100,
            top: 50,
            child: BackgroundShapes(
              backgroundColor: AppColors.primaryColor.withOpacity(0.1),
              height: 200,
              width: 200,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      maxRadius: 80,
                      child: Image.asset('lib/assets/images/style/logo.png'),
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    CustomField(
                        fieldlLabelTest: AppTexts.link,
                        fieldIcon: const Icon(Icons.link),
                        fieldHint: AppTexts.linkHint,
                        fieldClearIcon: IconButton(
                            onPressed: () {}, icon: const Icon(Icons.clear))),
                    const SizedBox(height: 60),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) =>
                                      const LinkHistoryScreen()));
                            },
                            child: const Text(AppTexts.pasteLink)),
                        ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const ProfileScreen()));
                            },
                            child: const Text(AppTexts.checkLink))
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
