import 'package:map_app_deliver/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_builder.dart';

class SignInButtonWidget extends StatelessWidget {
  final Color backgroundColor, iconColor, textColor;
  final String text;
  final VoidCallback press;
  final IconData? icon;
  final double fontSize;
  const SignInButtonWidget({
    Key? key,
    this.backgroundColor = Colors.grey,
    this.text = "",
    required this.press,
    this.icon,
    this.iconColor = Colors.blue,
    this.fontSize = 22,
    this.textColor = kPrimaryWhite,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SignInButtonBuilder(
      backgroundColor: backgroundColor,
      text: text,
      onPressed: press,
      icon: icon,
      iconColor: iconColor,
      fontSize: fontSize,
      textColor: textColor,
    );
  }
}
