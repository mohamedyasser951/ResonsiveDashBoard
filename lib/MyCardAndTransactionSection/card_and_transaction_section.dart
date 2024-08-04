import 'package:flutter/material.dart';
import 'package:responsive_dashboard/MyCardAndTransactionSection/my_card_section.dart';


class CardAndTransactionSection extends StatelessWidget {
  const CardAndTransactionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 24.0,
        ),
        MyCardSection(),
      ],
    );
  }
}


