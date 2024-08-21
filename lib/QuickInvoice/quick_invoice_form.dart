import 'package:flutter/material.dart';
import 'package:responsive_dashboard/QuickInvoice/custom_button.dart';
import 'package:responsive_dashboard/QuickInvoice/custom_title_text_field.dart';
import 'package:responsive_dashboard/utils/text_styles.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Row(
          children: [
            Expanded(
                child: CustomTitleTextField(
                    title: "Customer name", hintText: "Type customer name")),
            SizedBox(
              width: 12,
            ),
            Expanded(
                child: CustomTitleTextField(
                    title: "Customer Email", hintText: "Type customer email")),
          ],
        ),
        const SizedBox(
          height: 12,
        ),
        const Row(
          children: [
            Expanded(
                child: CustomTitleTextField(
                    title: "Item name", hintText: "Type customer name")),
            SizedBox(
              width: 12,
            ),
            Expanded(
                child:
                    CustomTitleTextField(title: "Item mount", hintText: "USD")),
          ],
        ),
        const SizedBox(
          height: 12,
        ),
        Row(
          children: [
            Expanded(
                child: CustomButton(
              widget: Text(
                "Add more details",
                style: AppTextStyles.styleMedium16(context)
                    .copyWith(color: const Color(0xFF4EB7F2)),
              ),
              color: Colors.transparent,
            )),
            const SizedBox(
              width: 12.0,
            ),
            Expanded(
                child: CustomButton(
              widget: Text(
                "Send Money",
                style:
                    AppTextStyles.styleMedium16(context).copyWith(color: Colors.white),
              ),
              color: const Color(0xFF4EB7F2),
            )),
          ],
        ),
      ],
    );
  }
}
