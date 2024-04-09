import 'package:flutter/material.dart';
import 'package:lenk/core/constants/constants_exports.dart';
import 'package:lenk/core/shared/widgets/decorators/index.dart';
import 'package:lenk/features/auth/presentation/screens/home_screen.dart';
import 'package:lenk/init/screens/navbar_screen.dart';

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
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
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
