import 'package:flutter/material.dart';
import 'package:lenk/core/constants/constants_exports.dart';
import 'package:lenk/core/shared/widgets/decorators/index.dart';

class LinkHistoryScreen extends StatefulWidget {
  const LinkHistoryScreen({super.key});

  @override
  State<LinkHistoryScreen> createState() => _LinkHistoryScreenState();
}

class _LinkHistoryScreenState extends State<LinkHistoryScreen> {
  // Sample history data
  List<String> historyData = ["Link 1", "Link 2", "Link 3"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: GradientContainer(
          firstGradientColor: AppColors.appTeal,
          secondGradientColor: AppColors.fifthColor,
          myChild: historyData.isEmpty
              ? const Center(
                  child: Text("No links checked"),
                )
              : ListView.builder(
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
    );
  }
}
