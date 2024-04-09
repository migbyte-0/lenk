// Placeholder for profile_screens.dart --
import 'package:flutter/material.dart';
import 'package:lenk/core/constants/constants_exports.dart';
import 'package:lenk/core/shared/widgets/decorators/index.dart';
import 'package:lenk/core/shared/widgets/style/custom_field.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientContainer(
        firstGradientColor: AppColors.primaryColor,
        secondGradientColor: AppColors.secondaryColor,
        myChild: Directionality(
          textDirection: TextDirection.rtl,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                maxRadius: 80,
                child: Icon(
                  Icons.person,
                  size: 90,
                  color: Colors.indigo,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                margin: const EdgeInsets.only(left: 10, right: 10),
                child: Container(
                  margin: const EdgeInsets.all(15),
                  padding: const EdgeInsets.all(50),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20),
                    ),
                    border: Border.all(color: Colors.black12),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: CustomField(
                            fieldlLabelTest: AppTexts.link,
                            fieldIcon: const Icon(Icons.person),
                            fieldHint: AppTexts.enter,
                            isItReadOnly: true,
                            fieldClearIcon: IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.edit))),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const CustomField(
                        fieldlLabelTest: AppTexts.link,
                        fieldIcon: Icon(Icons.email),
                        isItReadOnly: true,
                        fieldHint: AppTexts.enter,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      ElevatedButton(
                          onPressed: () {}, child: const Text(AppTexts.logout))
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
