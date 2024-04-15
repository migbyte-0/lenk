import 'package:flutter/material.dart';

class PageIndicator extends StatelessWidget {
  final int currentPage;
  final int pageCount;

  const PageIndicator(this.currentPage, this.pageCount, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List<Widget>.generate(pageCount, (int index) {
        return AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          height: 8,
          width: (index == currentPage) ? 24 : 8,
          margin: const EdgeInsets.symmetric(horizontal: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: (index == currentPage) ? Colors.blue : Colors.grey,
          ),
        );
      }),
    );
  }
}
