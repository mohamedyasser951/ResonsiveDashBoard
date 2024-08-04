import 'package:flutter/material.dart';
import 'package:responsive_dashboard/QuickInvoice/custom_button.dart';
import 'package:responsive_dashboard/utils/text_styles.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Row(
        //   children: [
        //     Expanded(
        //         child: CustomTitleTextField(
        //             title: "Customer name", hintText: "Type customer name")),
        //     Expanded(
        //         child: CustomTitleTextField(
        //             title: "Customer Email", hintText: "Type customer email")),
        //   ],
        // ),
        // Row(
        //   children: [
        //     Expanded(
        //         child: CustomTitleTextField(
        //             title: "Customer name", hintText: "Type customer name")),
        //     Expanded(
        //         child: CustomTitleTextField(
        //             title: "Customer Email", hintText: "Type customer email")),
        //   ],
        // ),

        Row(
          children: [
            Expanded(
                child: CustomButton(
              widget: Text(
                "Add more details",
                style: AppTextStyles.styleMedium16
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
                    AppTextStyles.styleMedium16.copyWith(color: Colors.white),
              ),
              color: const Color(0xFF4EB7F2),
            )),
          ],
        ),
      ],
    );
  }
}
