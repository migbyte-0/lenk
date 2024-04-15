import 'package:flutter/material.dart';
import 'package:lenk/core/constants/constants_exports.dart';

class CustomField extends StatelessWidget {
  final String fieldlLabelTest;
  final String fieldHint;
  final Icon fieldIcon;
  final IconButton? fieldClearIcon;
  final bool? isItReadOnly;
  const CustomField(
      {super.key,
      required this.fieldlLabelTest,
      required this.fieldIcon,
      required this.fieldHint,
      this.fieldClearIcon,
      this.isItReadOnly});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextField(
        readOnly: isItReadOnly ?? false,
        decoration: InputDecoration(
            hintText: fieldHint,
            fillColor: Colors.white,
            filled: true,
            border: OutlineInputBorder(
              borderRadius:
                  BorderRadius.circular(10.0), // Same radius as the container
              borderSide: BorderSide.none, // Remove the default border side
            ),
            labelText: fieldlLabelTest,
            prefixIcon: fieldIcon,
            iconColor: AppColors.primaryColor,
            suffixIcon: fieldClearIcon ??
                const Icon(
                  Icons.clear,
                  color: Colors.transparent,
                )),
      ),
    );
  }
}
