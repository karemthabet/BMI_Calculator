import 'package:bmi_calculator/presentation/utils/colors/app_colors.dart';
import 'package:bmi_calculator/presentation/utils/styles/app_styles.dart';
import 'package:bmi_calculator/presentation/widgets/custom_container3.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({
    super.key,
    required this.bmi,
    required this.result,
    required this.advice,
  });

  final String bmi;
  final String advice;
  final String result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('BMI Result'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 50),
            Text('Your BMI is', style: AppStyles.yourResult),
            const SizedBox(height: 20),
            Container(
              height: 503,
              width: 320,
              decoration: BoxDecoration(
                color: AppColors.containerColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(bmi, style: AppStyles.yourResult),
                  const SizedBox(height: 20),
                  Text(result, style: AppStyles.normalTitle),
                  Text(
                    textAlign: TextAlign.center,
                    advice,
                    style: AppStyles.normalTitle,
                  ),
                ],
              ),
            ),
            const Spacer(),
            CustomContainer3(
              title: 'RE-CALCULATE',
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
