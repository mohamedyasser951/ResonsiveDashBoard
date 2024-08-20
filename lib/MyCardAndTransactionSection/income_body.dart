import 'package:flutter/material.dart';
import 'package:responsive_dashboard/MyCardAndTransactionSection/chart_details.dart';
import 'package:responsive_dashboard/MyCardAndTransactionSection/income_chart.dart';

class IncomeBody extends StatelessWidget {
  const IncomeBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Expanded(flex: 1, child: IncomeChart()),
        Expanded(flex: 2, child: ChartDetails()),
      ],
    );
  }
}