import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:provider/provider.dart';
import 'package:simple_sebha/core/colors.dart';
import 'package:simple_sebha/providers/sebha_provider.dart';
import 'package:simple_sebha/views/home/widgets/color_radios.dart';

class HomeBottom extends StatelessWidget {
  const HomeBottom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    SebhaProvider sebhaProvider = Provider.of<SebhaProvider>(context);
    return Column(
      children: [
        Text(
          "الاستغفار",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Theme.of(context).primaryColor,
          ),
        ),
        Text(
          sebhaProvider.roundTasbeh.toString(),
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Theme.of(context).primaryColor,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        CircularPercentIndicator(
          animationDuration: 300,
          percent: (sebhaProvider.roundTasbeh / sebhaProvider.goal),
          progressColor: Theme.of(context).primaryColor,
          backgroundColor: Theme.of(context).primaryColor.withOpacity(0.2),
          animation: true,
          addAutomaticKeepAlive: true,
          animateFromLastPercent: true,
          lineWidth: 5,
          radius: 90,
          center: IconButton(
            onPressed: () {
              sebhaProvider.incrementTasbeeh();
            },
            icon: Icon(
              Icons.touch_app,
              size: 56,
              color: Theme.of(context).primaryColor,
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          "مرات التكرار: ${sebhaProvider.timeRepeat}",
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Theme.of(context).primaryColor,
          ),
        ),
        Text(
          "المجموع: ${sebhaProvider.total}",
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Theme.of(context).primaryColor,
          ),
        ),
        Spacer(),
        ColorRadios(),
      ],
    );
  }
}
