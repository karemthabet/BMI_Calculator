
import 'package:bmi_calculator/presentation/screens/result/result_screen.dart';
import 'package:bmi_calculator/presentation/utils/colors/app_colors.dart';
import 'package:bmi_calculator/presentation/utils/styles/app_styles.dart';
import 'package:bmi_calculator/presentation/widgets/custom_container3.dart';
import 'package:bmi_calculator/presentation/widgets/custom_container_down.dart';
import 'package:bmi_calculator/presentation/widgets/custom_container_top.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isMale = true;
  double height = 160;
  double weight = 40;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.containerColor,
        title: const Text('BMI Calculator'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomContainerTop(
                  title: 'Male',
                  isSelected: isMale,
                  onTap: () {
                    setState(() {
                      isMale = true;
                    });
                  },
                ),
                CustomContainerTop(
                  title: 'Female',
                  isSelected: !isMale,
                  onTap: () {
                    setState(() {
                      isMale = false;
                    });
                  },
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.containerColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Height', style: AppStyles.elementTitle),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        height.round().toString(),

                        style: TextStyle(color: Colors.white, fontSize: 40),
                      ),
                      SizedBox(width: 5),
                      Text(
                        'cm',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ],
                  ),
                  Slider(
                    activeColor: AppColors.purpleColor,
                    min: 50,
                    max: 220,
                    value: height,
                    onChanged: (value) {
                      setState(() {
                        height = value;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomContainerDown(
                  title: "Weight",
                  subTitle: weight.round().toString(),
                  removeonPressed: () {
                    if (weight > 0) {
                      weight--;
                    } else {
                      weight = 0;
                    }
                    setState(() {});
                  },
                  addonPressed: () {
                    weight++;
                    setState(() {});
                  },
                ),
                CustomContainerDown(
                  title: "Age",
                  subTitle: age.toString(),
                  removeonPressed: () {
                    if (age > 0) {
                      age--;
                    } else {
                      age = 0;
                    }
                    setState(() {});
                  },
                  addonPressed: () {
                    age++;
                    setState(() {});
                  },
                ),
              ],
            ),
          ),
          CustomContainer3(title: 'Calculate', onTap: calculateBMI),
        ],
      ),
    );
  }

  void calculateBMI() {
    double heightMeter = height / 100;
  double bmi = weight / (heightMeter * heightMeter);

  String result;
  String advice;

  if (bmi < 18.5) {
    result = 'Underweight';
    advice = 'You need to eat more and gain some healthy weight.';
  } else if (bmi >= 18.5 && bmi < 24.9) {
    result = 'Normal';
    advice = 'Great job! Keep maintaining your healthy lifestyle.';
  } else if (bmi >= 25 && bmi < 29.9) {
    result = 'Overweight';
    advice = 'Try to exercise regularly and eat balanced meals.';
  } else {
    result = 'Obese';
    advice = 'Consider visiting a doctor for advice and start a healthier routine.';
  }

  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => ResultScreen(
        bmi: bmi.toStringAsFixed(1),
        result: result,
        advice: advice,
      ),
    ),
  );
  }
}
