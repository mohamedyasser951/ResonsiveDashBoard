import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Color color;
  final Widget widget;
  const CustomButton({
    super.key,
    required this.color,
    required this.widget,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
          autofocus: true,
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              backgroundColor: color,
              elevation: 0.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0))),
          child: widget),
    );
  }
}
