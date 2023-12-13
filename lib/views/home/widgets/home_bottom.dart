import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:simple_sebha/core/colors.dart';

class HomeBottom extends StatelessWidget {
  const HomeBottom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "الاستغفار",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: AppColors.blackColor,
          ),
        ),
        Text(
          "17",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        CircularPercentIndicator(
          animationDuration: 300,
          percent: 17 / 100,
          progressColor: AppColors.purpleColor,
          backgroundColor: AppColors.purpleColor.withOpacity(0.2),
          animation: true,
          lineWidth: 5,
          radius: 90,
          center: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.touch_app,
              size: 56,
              color: AppColors.blackColor,
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          "مرات التكرار: 0",
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: AppColors.blackColor,
          ),
        ),
        Text(
          "المجموع: 90",
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: AppColors.blackColor,
          ),
        ),
        Spacer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Radio(
              visualDensity: VisualDensity.compact,
              value: 0,
              groupValue: 0,
              onChanged: (value) {},
            ),
            Radio(
              value: 1,
              groupValue: 0,
              onChanged: (value) {},
            ),
            Radio(
              value: 2,
              groupValue: 0,
              onChanged: (value) {},
            ),
          ],
        ),
      ],
    );
  }
}
