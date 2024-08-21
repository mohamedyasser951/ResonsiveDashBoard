import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:responsive_dashboard/MyCardAndTransactionSection/income_body.dart';
import 'package:responsive_dashboard/MyCardAndTransactionSection/income_detailed_chart.dart';
import 'package:responsive_dashboard/MyCardAndTransactionSection/income_header.dart';
import 'package:responsive_dashboard/utils/sizes_confiq.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    log(MediaQuery.of(context).size.width.toString());
    double width = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12.0)),
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0, right: 8.0, left: 8.0),
        child: Column(
          children: [
            const IncomeHeader(),
            width >= SizesConfiq.desktopSize && width < 1460
                ? const Expanded(
                    child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: IncomeDetailedCharts(),
                  ))
                : const IncomeBody(),
            const SizedBox(
              height: 12.0,
            )
          ],
        ),
      ),
    );
  }
}
