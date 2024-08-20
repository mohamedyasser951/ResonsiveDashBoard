import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Models/transaction_model.dart';
import 'package:responsive_dashboard/MyCardAndTransactionSection/transaction_item.dart';

class TransacationHistoryBuilder extends StatelessWidget {
  TransacationHistoryBuilder({super.key});

  final List<TransactionModel> transactions = [
    TransactionModel(
        date: "13 Apr, 2022 ",
        title: "Cash Withdrawal",
        money: "\$20,129",
        isWithdrawal: true),
    TransactionModel(
        date: "13 Apr, 2022 ",
        title: "Landing Page project",
        money: "\$20,129",
        isWithdrawal: false),
    TransactionModel(
        date: "13 Apr, 2022 ",
        title: "Juni Mobile App project",
        money: "\$20,129",
        isWithdrawal: false),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
        children: transactions.map((e) {
      return Padding(
        padding: const EdgeInsets.only(top: 8),
        child: TransactionItem(model: e),
      );
    }).toList());
    // return ListView.separated(
    //   shrinkWrap: true,
    //   itemCount: transactions.length,
    //   itemBuilder: (context, index) =>
    //       TransactionItem(model: transactions[index]),
    //   separatorBuilder: (context, index) => const SizedBox(
    //     height: 8.0,
    //   ),
    // );
  }
}
