// Placeholder for profile_screens.dart --
import 'package:flutter/material.dart';
import 'package:lenk/core/constants/app_text.dart';
import 'package:lenk/core/constants/app_text_styles.dart';
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
                maxRadius: 60,
                child: Icon(
                  Icons.person,
                  size: 60,
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
                  padding: const EdgeInsets.all(10),
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
                            fieldlLabelTest: "",
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
                        fieldlLabelTest: "",
                        fieldIcon: Icon(Icons.email),
                        isItReadOnly: true,
                        fieldHint: AppTexts.enter,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      ElevatedButton.icon(  style: TextButton.styleFrom(elevation: 10,backgroundColor:Colors.white ),

                          onPressed: () {}, label: const Text(AppTexts.logout,style: Styles.style17Red,), icon: Icon(Icons.logout,color: Colors.redAccent,),),
                        
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
