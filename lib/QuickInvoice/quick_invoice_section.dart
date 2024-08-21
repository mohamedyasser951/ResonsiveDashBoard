import 'package:flutter/material.dart';
import 'package:responsive_dashboard/QuickInvoice/latest_transaction_builder.dart';
import 'package:responsive_dashboard/QuickInvoice/quick_invoice_form.dart';
import 'package:responsive_dashboard/QuickInvoice/quick_invoice_header.dart';
import 'package:responsive_dashboard/utils/text_styles.dart';

class QuickInvoiceSection extends StatelessWidget {
  const QuickInvoiceSection({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
          border: null,
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.0)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const QuickInvoiceHeader(),
          const SizedBox(
            height: 10.0,
          ),
          Text(
            "Latest Transaction",
            style: AppTextStyles.styleMedium16(context),
          ),
          LatestTransactionBuilder(),
          const Divider(
            height: 32,
          ),
          const SizedBox(
            height: 8.0,
          ),
          const QuickInvoiceForm(),
        ],
      ),
    );
  }
}
