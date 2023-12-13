import 'package:flutter/material.dart';
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
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.touch_app,
                  size: 56,
                  color: AppColors.blackColor,
                ),
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
