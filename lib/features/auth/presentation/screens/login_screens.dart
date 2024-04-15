import 'package:flutter/material.dart';
import 'package:lenk/core/constants/constants_exports.dart';
import 'package:lenk/core/shared/widgets/decorators/index.dart';
import 'package:lenk/init/screens/navbar_screen.dart';

import '../../../../core/shared/widgets/decorators/background_shapes.dart';
import '../../../../core/shared/widgets/style/custom_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ClipPath(
            clipper: UpperWaveClipper(),
            child: const GradientContainer(
                firstGradientColor: AppColors.primaryColor,
                secondGradientColor: AppColors.secondaryColor),
          ),
          BackgroundShapes(
            backgroundColor: AppColors.primaryColor.withOpacity(0.1),
          ),
          Positioned(
            left: 300,
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
          Positioned(
            left: 700,
            top: 700,
            child: BackgroundShapes(
              backgroundColor: AppColors.primaryColor.withOpacity(0.1),
              height: 150,
              width: 150,
            ),
          ),
          Positioned(
            left: 700,
            top: 300,
            child: BackgroundShapes(
              backgroundColor: AppColors.primaryColor.withOpacity(0.1),
              height: 100,
              width: 100,
            ),
          ),
          Positioned(
            right: 700,
            top: 500,
            child: BackgroundShapes(
              backgroundColor: AppColors.primaryColor.withOpacity(0.1),
              height: 350,
              width: 350,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                      backgroundColor: Colors.white,
                      maxRadius: 80,
                      child: Image.asset('lib/assets/images/style/logo.png')),
                  const SizedBox(
                    height: 40,
                  ),
                  CustomField(
                    fieldlLabelTest: AppTexts.userName,
                    fieldHint: '',
                    fieldIcon: const Icon(Icons.person),
                    fieldClearIcon: IconButton(
                        onPressed: () {}, icon: const Icon(Icons.clear)),
                  ),
                  const SizedBox(height: 30),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const NavBarScreen()));
                      },
                      child: const Text(AppTexts.enter))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
