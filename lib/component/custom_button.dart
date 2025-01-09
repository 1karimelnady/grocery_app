import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery_app/core/theme/color_manager.dart';
import 'package:grocery_app/core/theme/font_manager.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final double? borderRadius;
  final Color? backgroundColor;
  final Color? color;
  final Color? bordereColor;
  final double? fontSize;
  final bool isDisabled;
  final IconData? icon;

  const CustomButton({
    super.key,
    required this.text,
    required this.onTap,
    this.borderRadius = 6,
    this.backgroundColor = ColorManager.mainColor,
    this.color = ColorManager.whiteColor,
    this.bordereColor = ColorManager.mainColor,
    this.fontSize = 20,
    this.isDisabled = false,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: isDisabled ? null : onTap,
      child: Container(
        height: 50,
        padding: const EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          color: isDisabled ? ColorManager.hintColor : backgroundColor,
          borderRadius: BorderRadius.circular(borderRadius!),
          border: Border.all(
            color: isDisabled ? ColorManager.hintColor : bordereColor!,
          ),
        ),
        child: Center(
          child: FittedBox(
            child: icon != null
                ? Icon(icon, color: color)
                : Text(
                    text,
                    style: Get.textTheme.headlineMedium!.copyWith(
                      color: color!,
                      fontWeight: FontWeight.w700,
                      fontFamily: FontConstants.fontFamily1,
                      fontSize: fontSize!,
                    ),
                  ),
          ),
        ),
      ),
    );
  }
}
