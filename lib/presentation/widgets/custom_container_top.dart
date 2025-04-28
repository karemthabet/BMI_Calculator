import 'package:bmi_calculator/presentation/utils/colors/app_colors.dart';
import 'package:bmi_calculator/presentation/utils/styles/app_styles.dart';
import 'package:flutter/material.dart';

class CustomContainerTop extends StatelessWidget {
  const CustomContainerTop({
    super.key,
    required this.title,
    required this.onTap,
    required this.isSelected,
  });

  final String title;
  final Function() onTap;
  final bool  isSelected;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 180,
        width: 155,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: isSelected ? AppColors.containerColor :AppColors.backgroundColor ,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              title == 'Male' ? Icons.male : Icons.female,
              size: 100,
              color: Colors.white,
            ),
            const SizedBox(height: 10),
            Text(title, style: AppStyles.elementTitle),
          ],
        ),
      ),
    );
  }
}
