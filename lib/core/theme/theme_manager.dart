import 'package:flutter/material.dart';
import 'package:grocery_app/component/decorated_input_border.dart';
import 'package:grocery_app/core/theme/text_manager.dart';

import 'color_manager.dart';
import 'font_manager.dart';

ThemeData get applicationTheme => ThemeData(
      fontFamily: FontConstants.fontFamily2,

      /// Main Color
      scaffoldBackgroundColor: ColorManager.whiteColor,
      primaryColor: ColorManager.mainColor, dividerColor: Colors.transparent,
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: ColorManager.mainColor,
        selectionColor: ColorManager.mainColor.withOpacity(.5),
        selectionHandleColor: ColorManager.mainColor,
      ),

      /// Elevated Button Theme
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
          textStyle: TextManager.font16WhiteBold,
          backgroundColor: ColorManager.mainColor,
        ),
      ),

      inputDecorationTheme: InputDecorationTheme(
        fillColor: Colors.white,
        errorStyle: TextManager.font16MainMedium.copyWith(
          letterSpacing: 0,
        ),
        hintStyle: TextManager.font16HintMedium.copyWith(
          letterSpacing: 0,
        ),
        border: DecoratedInputBorder(
          child: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(12),
          ),
          shadow: const BoxShadow(
            blurRadius: 0,
            spreadRadius: 0,
            color: Colors.transparent,
          ),
        ),
        focusedBorder: DecoratedInputBorder(
          child: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(12),
          ),
          shadow: const BoxShadow(
            blurRadius: 0,
            spreadRadius: 0,
            color: Colors.transparent,
          ),
        ),
        enabledBorder: DecoratedInputBorder(
          child: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(12),
          ),
          shadow: const BoxShadow(
            blurRadius: 0,
            spreadRadius: 0,
            color: Colors.transparent,
          ),
        ),
        errorBorder: DecoratedInputBorder(
          child: OutlineInputBorder(
            borderSide:
                const BorderSide(width: 1, color: ColorManager.mainColor),
            borderRadius: BorderRadius.circular(12),
          ),
          shadow: const BoxShadow(
            blurRadius: 0,
            spreadRadius: 0,
            color: ColorManager.hintColor,
          ),
        ),
        disabledBorder: DecoratedInputBorder(
          child: OutlineInputBorder(
            borderSide:
                const BorderSide(width: 1, color: ColorManager.hintColor),
            borderRadius: BorderRadius.circular(12),
          ),
          shadow: const BoxShadow(
            blurRadius: 0,
            spreadRadius: 0,
            color: ColorManager.hintColor,
          ),
        ),
      ),
    );
