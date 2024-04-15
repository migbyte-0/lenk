import 'package:flutter/material.dart';
import 'package:lenk/core/constants/app_text_styles.dart';
import 'package:lenk/core/constants/constants_exports.dart';
import 'package:lenk/core/shared/widgets/decorators/index.dart';
import 'package:lottie/lottie.dart';

import '../../../../core/shared/widgets/decorators/background_shapes.dart';

class LinkHistoryScreen extends StatefulWidget {
  const LinkHistoryScreen({super.key});

  @override
  State<LinkHistoryScreen> createState() => _LinkHistoryScreenState();
}

class _LinkHistoryScreenState extends State<LinkHistoryScreen> {
  // Sample history data
  List<String> historyData = ["Link 1", "Link 2", "Link 3"];
// "Link 1", "Link 2", "Link 3"
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
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
          Directionality(
            textDirection: TextDirection.rtl,
            child: GradientContainer(
              firstGradientColor: AppColors.primaryColor,
              secondGradientColor: AppColors.secondaryColor,
              myChild: historyData.isEmpty
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          maxRadius: 100,
                          child: Lottie.asset(
                              height: 180,
                              width: 180,
                              repeat: false,
                              'lib/assets/json/animations/error.json'),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Center(
                          child: Text(
                            AppTexts.noHistoryFound,
                            style: Styles.style20White,
                          ),
                        ),
                      ],
                    )
                  : GradientContainer(
                      secondGradientColor: AppColors.primaryColor,
                      firstGradientColor: AppColors.secondaryColor,
                      myChild: ListView.builder(
                        itemCount: historyData.length,
                        itemBuilder: (context, index) {
                          return Card(
                            margin: const EdgeInsets.all(10),
                            elevation: 10,
                            child: ListTile(
                              leading: const Icon(Icons.web),
                              title: Text(
                                historyData[index],
                              ),
                              subtitle: const Text('Date'),
                            ),
                          );
                        },
                      ),
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
