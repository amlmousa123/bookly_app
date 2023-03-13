import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {Key? key,
      required this.text,
      this.borderRadius,
      required this.backgroundColor,
      required this.textColor,
      this.fontSize, this.onPressed})
      : super(key: key);

  final String text;
  final BorderRadius? borderRadius;
  final Color backgroundColor;
  final Color textColor;
  final double? fontSize;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: (){},
      style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(12),
          )),
      child: Text(
        text,
        style: MyStyles.textStyle18.copyWith(
            color: textColor, fontWeight: FontWeight.w900, fontSize: fontSize),
      ),
    );
  }
}
