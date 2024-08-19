import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Models/chart_details_model.dart';
import 'package:responsive_dashboard/MyCardAndTransactionSection/chart_details_item.dart';

class ChartDetails extends StatelessWidget {
  ChartDetails({super.key});
  final List<ChartDetailsModel> chartDetailsItems = [
    ChartDetailsModel(
        color: const Color(0XFF208CC8),
        precentage: "40%",
        title: "Design service"),
    ChartDetailsModel(
        color: const Color(0XFF4EB7F2),
        precentage: "25%",
        title: "Design product"),
    ChartDetailsModel(
        color: const Color(0XFF064061),
        precentage: "20%",
        title: "Product royalti"),
    ChartDetailsModel(
        color: const Color(0XFFE2DECD), precentage: "22%", title: "Other"),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: chartDetailsItems.length,
      itemBuilder: (context, index) =>
          ChartDetailsItem(model: chartDetailsItems[index]),
    );
  }
}
