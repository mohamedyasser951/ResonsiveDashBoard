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
        Text(
          "Income",
          style: AppTextStyles.styleMedium16(context),
        ),
        Container(
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
              border: Border.all(width: 0.1),
              color: Colors.white,
              borderRadius: BorderRadius.circular(12.0)),
          child: Row(
            children: [
              Text(
                "Monthly",
                style: AppTextStyles.styleMedium16(context),
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
