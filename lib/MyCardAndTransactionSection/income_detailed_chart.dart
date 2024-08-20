import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeDetailedCharts extends StatefulWidget {
  const IncomeDetailedCharts({super.key});

  @override
  State<IncomeDetailedCharts> createState() => _IncomeDetailedChartsState();
}

class _IncomeDetailedChartsState extends State<IncomeDetailedCharts> {
  int currentIndex = -1;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1.5, child: PieChart(getPieChartData()));
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
              titlePositionPercentageOffset: currentIndex == 0 ? 1.3 : null,
              title: currentIndex == 0 ? "Design service" : '40%',
              titleStyle:
                  TextStyle(color: currentIndex == 0 ? null : Colors.white),
              color: const Color(0XFF208CC8),
              value: 40,
              radius: currentIndex == 0 ? 60 : 50),
          PieChartSectionData(
              titlePositionPercentageOffset: currentIndex == 1 ? 1.9 : null,
              titleStyle:
                  TextStyle(color: currentIndex == 1 ? null : Colors.white),
              title: currentIndex == 1 ? "Design product" : '25%',
              color: const Color(0XFF4EB7F2),
              value: 25,
              radius: currentIndex == 1 ? 60 : 50),
          PieChartSectionData(
              titlePositionPercentageOffset: currentIndex == 2 ? 1.2 : null,
              titleStyle:
                  TextStyle(color: currentIndex == 2 ? null : Colors.white),
              title: currentIndex == 2 ? "Product royalti" : '20%',
              color: const Color(0XFF064061),
              value: 20,
              radius: currentIndex == 2 ? 60 : 50),
          PieChartSectionData(
              titlePositionPercentageOffset: currentIndex == 3 ? 1.3 : null,
              titleStyle:
                  TextStyle(color: currentIndex == 3 ? null : Colors.white),
              title: currentIndex == 3 ? "Other" : '20%',
              color: const Color(0XFFE2DECD),
              value: 20,
              radius: currentIndex == 3 ? 60 : 50),
        ]);
  }
}
