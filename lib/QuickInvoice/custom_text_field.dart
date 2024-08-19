import 'package:flutter/material.dart';

class CutomTextField extends StatelessWidget {
  final String hintText;

  const CutomTextField({
    super.key,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          hintText: hintText,
          filled: true,
          fillColor: const Color(0xFFFAFAFA),
          border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(12.0))),
    );
  }
}
