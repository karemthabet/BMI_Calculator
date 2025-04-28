import 'package:bmi_calculator/presentation/utils/colors/app_colors.dart';
import 'package:bmi_calculator/presentation/utils/styles/app_styles.dart';
import 'package:flutter/material.dart';

class CustomContainer3 extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const CustomContainer3({super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.purpleColor,
          borderRadius: BorderRadius.circular(20),
        ),
        height: 70,
        width: double.infinity,

        child: Center(child: Text(title, style: AppStyles.calculateTitle)),
      ),
    );
  }
}
