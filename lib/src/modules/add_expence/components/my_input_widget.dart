import 'package:flutter/material.dart';

class MyInput extends StatelessWidget {
  final double radius;
  final Widget icon;
  String? hint;
  TextStyle? hintStyle;
  TextEditingController? controller;
  final bool readOnly;
  final BorderRadius borderRadius;
  Widget? suffixIcon;
  void Function()? onTap;
  final Color? fillColor;

  MyInput({
    this.suffixIcon,
    this.hint,
    this.hintStyle,
    this.onTap,
    required this.fillColor,
    required this.borderRadius,
    required this.readOnly,
    this.controller,
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
        fillColor: fillColor,
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
