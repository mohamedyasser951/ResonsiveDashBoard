import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/MyCardAndTransactionSection/chart_details.dart';
import 'package:responsive_dashboard/utils/text_styles.dart';
import 'dart:math' as math;

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12.0)),
      child: Padding(
        padding: const EdgeInsets.only(top: 16.0, right: 8.0, left: 8.0),
        child: Column(
          children: [
            const IncomeHeader(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Expanded(child: IncomeChart()),
                Expanded(child: ChartDetails()),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
  int currentIndex = -1;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1, child: PieChart(getPieChartData()));
  }

  PieChartData getPieChartData() {
    return PieChartData(
        centerSpaceRadius: 30,
        sectionsSpace: 0,
        pieTouchData: PieTouchData(
          touchCallback: (p0, p1) {
            currentIndex = p1?.touchedSection?.touchedSectionIndex ?? -1;
            setState(() {});
          },
        ),
        sections: [
          PieChartSectionData(
              color: const Color(0XFF208CC8),
              value: 40,
              showTitle: false,
              radius: currentIndex == 0 ? 60 : 50),
          PieChartSectionData(
              color: const Color(0XFF4EB7F2),
              value: 25,
              showTitle: false,
              radius: currentIndex == 1 ? 60 : 50),
          PieChartSectionData(
              color: const Color(0XFF064061),
              value: 20,
              showTitle: false,
              radius: currentIndex == 2 ? 60 : 50),
          PieChartSectionData(
              color: const Color(0XFFE2DECD),
              value: 20,
              showTitle: false,
              radius: currentIndex == 3 ? 60 : 50),
        ]);
  }
}

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
