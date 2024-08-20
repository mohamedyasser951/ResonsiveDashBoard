

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

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
        // centerSpaceRadius: 30,
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
