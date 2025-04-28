import 'package:bmi_calculator/presentation/utils/colors/app_colors.dart';
import 'package:bmi_calculator/presentation/utils/styles/app_styles.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static final ThemeData myTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.backgroundColor,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.containerColor,
      centerTitle: true,
      titleTextStyle: AppStyles.appBarTitle,
    ),
    iconButtonTheme: IconButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(AppColors.iconcolor),
        foregroundColor: MaterialStateProperty.all<Color>(AppColors.whiteColor),
      ),
    ),
  );
}
