import 'package:flutter/material.dart';
import 'package:responsive_dashboard/AllExpenses/expense_item.dart';
import 'package:responsive_dashboard/Models/expense_item_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';

class ExpenseListBuilder extends StatefulWidget {
  const ExpenseListBuilder({super.key});
  static List<ExpenseItemModel> items = [
    ExpenseItemModel(
        image: Assets.imagesBalance,
        title: "Balance",
        date: "April 2022",
        price: r"$20,129"),
    ExpenseItemModel(
        image: Assets.imagesIncome,
        title: "Income",
        date: "April 2022",
        price: r"$20,129"),
    ExpenseItemModel(
        image: Assets.imagesExpense,
        title: "Expense",
        date: "April 2022",
        price: r"$20,129"),
  ];

  @override
  State<ExpenseListBuilder> createState() => _ExpenseListBuilderState();
}

class _ExpenseListBuilderState extends State<ExpenseListBuilder> {
  int activeItem = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: ExpenseListBuilder.items.asMap().entries.map((e) {
        int index = e.key;
        if (index == 1) {
          return Expanded(
            child: GestureDetector(
              onTap: () {
                changeItemState(index = index);
              },
              child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: ExpenseItem(
                itemModel: e.value,
                isActive: index == activeItem,
              ),
            ),
            ),
          );
        }
        return Expanded(
          child: GestureDetector(
            onTap: () {
                changeItemState(index = index);
              },
            child: ExpenseItem(
              itemModel: e.value,
              isActive: index == activeItem,
            ),
          ),
        );
      }).toList(),
    );
  }

  void changeItemState(int newIndex) {
    setState(() {
      activeItem = newIndex;
    });
  }
}
