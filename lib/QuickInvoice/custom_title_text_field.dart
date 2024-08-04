import 'package:flutter/material.dart';
import 'package:responsive_dashboard/QuickInvoice/custom_text_field.dart';
import 'package:responsive_dashboard/utils/text_styles.dart';

class CustomTitleTextField extends StatelessWidget {
  final String title;
  final String hintText;

  const CustomTitleTextField({
    super.key,
    required this.title,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppTextStyles.styleMedium16,
        ),
        const SizedBox(
          height: 10.0,
        ),
        CutomTextField(hintText: hintText),
      ],
    );
  }
}
