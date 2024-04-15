import 'package:flutter/material.dart';
import 'package:lenk/core/constants/constants_exports.dart';
import 'package:lenk/core/shared/widgets/style/custom_field.dart';
import 'package:lenk/features/history/presentation/screens/history_screens.dart';
import 'package:lenk/features/profile/presentation/screens/profile_screens.dart';

import '../../../../core/constants/app_text_styles.dart';
import '../../../../core/shared/widgets/decorators/background_shapes.dart';
import '../../../../core/shared/widgets/decorators/index.dart';

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
                myHeight: 300,
                firstGradientColor: AppColors.primaryColor,
                secondGradientColor: AppColors.secondaryColor),
          ),
          Positioned(
            left: 40,
            child: BackgroundShapes(
              backgroundColor: AppColors.primaryColor.withOpacity(0.2),
              height: 80,
              width: 80,
            ),
          ),
          Positioned(
            left: 240,
            child: BackgroundShapes(
              backgroundColor: AppColors.primaryColor.withOpacity(0.1),
              height: 130,
              width: 130,
            ),
          ),
          Positioned(
            left: 100,
            top: 50,
            child: BackgroundShapes(
              backgroundColor: AppColors.primaryColor.withOpacity(0.1),
              height: 100,
              width: 100,
            ),
          ), Positioned(
            left: 0,
            top: 150,
            child: BackgroundShapes(
              backgroundColor: AppColors.primaryColor.withOpacity(0.3),
              height: 100,
              width: 100,
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
                        fieldlLabelTest: AppTexts.linkHint,
                        fieldIcon: const Icon(Icons.link),
                        fieldHint: AppTexts.linkHint,
                        fieldClearIcon: IconButton(
                            onPressed: () {}, icon: const Icon(Icons.clear))),
                    const SizedBox(height: 60),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton.icon(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>
                                    const LinkHistoryScreen()));
                          },
                          icon: const Icon(Icons.paste),
                          label: const Text(AppTexts.pasteLink,style: Styles.style16,),
                        ),
                        ElevatedButton.icon(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) =>
                                      const LinkHistoryScreen()));
                            },
                            icon: const Icon(Icons.check),
                            label: const Text(AppTexts.checkLink,style: Styles.style16,)),
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
