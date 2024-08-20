

import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/text_styles.dart';
import 'dart:math' as math;

class IncomeHeader extends StatelessWidget {
  const IncomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          "Income",
          style: AppTextStyles.styleSemiBold20,
        ),
        Container(
          padding: const EdgeInsets.all(12.0),
          decoration: BoxDecoration(
              border: Border.all(width: 0.1),
              color: Colors.white,
              borderRadius: BorderRadius.circular(12.0)),
          child: Row(
            children: [
              const Text(
                "Monthly",
                style: AppTextStyles.styleMedium16,
              ),
              const SizedBox(
                width: 24.0,
              ),
              Transform.rotate(
                angle: -math.pi / 2,
                child: const Icon(
                  Icons.arrow_back_ios,
                  color: Color(0xFF064061),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
