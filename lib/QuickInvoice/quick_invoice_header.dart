import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/text_styles.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Quick Invoice",
          style: AppTextStyles.styleSemiBold20(context),
        ),
        const CircleAvatar(
          backgroundColor: Color(0xFFFAFAFA),
          child: Icon(
            Icons.add,
            color: Color(0xFF4EB7F2),
          ),
        ),
      ],
    );
  }
}
