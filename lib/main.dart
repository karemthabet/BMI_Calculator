import 'package:bmi_calculator/presentation/screens/home/home_page.dart';
import 'package:bmi_calculator/presentation/utils/theme/app_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BMICalculatorApp());
}

class BMICalculatorApp extends StatelessWidget {
  const BMICalculatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:HomePage() ,
      theme: AppTheme.myTheme,
    );
  }
}
