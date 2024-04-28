import 'package:flutter/material.dart';

class MyInput extends StatelessWidget {
  final double radius;
  final Widget icon;
  String? hint;
  TextStyle? hintStyle;
  final TextEditingController controller;
  final bool readOnly;
  final BorderRadius borderRadius;
  Widget? suffixIcon;
  void Function()? onTap;

  MyInput({
    this.suffixIcon,
    this.hint,
    this.hintStyle,
    this.onTap,
    required this.borderRadius,
    required this.readOnly,
    required this.controller,
    required this.icon,
    required this.radius,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      onTap: onTap,
      readOnly: readOnly,
      controller: controller,
      textAlignVertical: TextAlignVertical.center,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        prefixIcon: icon,
        suffixIcon: suffixIcon,
        hintText: hint,
        hintStyle: hintStyle,
        border: OutlineInputBorder(
          borderRadius: borderRadius,
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
