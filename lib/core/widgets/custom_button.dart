import 'package:flutter/material.dart';

import '../resources/style_manager.dart';
import '../resources/values_manager.dart';


class CustomButton extends StatelessWidget{
  const CustomButton({super.key, required this.text, this.fontSize, required this.fontColor, this.borderRadiusGeometry, required this.backgroundColor, required this.onPressed});
  final String text;
  final double? fontSize;
  final Color fontColor;
  final BorderRadiusGeometry? borderRadiusGeometry;
  final Color backgroundColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSize.s48,
      child: TextButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(backgroundColor),
              shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(borderRadius: borderRadiusGeometry??BorderRadius.circular(AppSize.s15))
              )
          ),
          onPressed: onPressed,
          child: Text(
            text,
            style: FontStyles.getBoldStyle()
                .copyWith(fontSize: fontSize, color: fontColor),
          )),
    );
  }
}