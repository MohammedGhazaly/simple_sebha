import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:simple_sebha/core/colors.dart';
import 'package:simple_sebha/views/home/widgets/home_header.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.25,
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.blackColor,
            ),
            child: HomeHeader(),
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Expanded(
          child: Column(
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
                percent: 15 / 33,
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
              )
            ],
          ),
        )
      ],
    );
  }
}
