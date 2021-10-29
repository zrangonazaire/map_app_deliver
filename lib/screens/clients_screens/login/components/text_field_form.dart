import 'package:map_app_deliver/constants.dart';
import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatelessWidget {
  final double? fontSize;
  final Color? color, fillColor, surfiColor;
  final IconData? prefixIcon, suffixIcon;
  final String? hintText;
  final String label;
  final bool obscureText;
  final Color borderSide;
  final String? textValidator, textController, value;
  const TextFormFieldWidget({
    Key? key,
    this.fontSize = 22,
    this.color = Colors.black,
    this.fillColor = kPrimaryWhite,
    this.prefixIcon = Icons.person,
    this.hintText = "Login",
    this.obscureText = false,
    this.suffixIcon,
    this.surfiColor = kPrimaryLightBack,
    this.borderSide = kPrimaryPink,
    required this.label,
    this.textValidator,
    this.textController,
    this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: TextEditingController(text: textController),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return textValidator;
        }
      },
      style: TextStyle(
        fontSize: fontSize,
        color: color,
      ),
      obscureText: obscureText,
      decoration: InputDecoration(
          prefixIcon: Icon(prefixIcon),
          label: Text(label),
          suffixIcon: Icon(
            suffixIcon,
            color: surfiColor,
          ),
          border: OutlineInputBorder(
              borderSide: BorderSide(color: borderSide, width: 2.0)),
          hintText: hintText,
          fillColor: fillColor,
          filled: true),
    );
  }
}
