import 'package:bmi_calculator/presentation/utils/colors/app_colors.dart';
import 'package:bmi_calculator/presentation/utils/styles/app_styles.dart';
import 'package:flutter/material.dart';

class CustomContainerDown extends StatelessWidget {
  const CustomContainerDown({
    super.key,
    required this.title,
    required this.subTitle,
    required this.removeonPressed,
    required this.addonPressed,
  });
  final String title;
  final String subTitle;
  final void Function() removeonPressed;
  final void Function() addonPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: 155,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppColors.containerColor,
      ),
      child: Column(
        children: [
          SizedBox(height: 5),
          Text(title, style: AppStyles.elementTitle),
          Text(
            subTitle,
            style: TextStyle(color: AppColors.whiteColor, fontSize: 40),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: removeonPressed,
                icon: const Icon(Icons.remove,),
              ),
              IconButton(
                onPressed: addonPressed,
                icon: const Icon(Icons.add,),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
