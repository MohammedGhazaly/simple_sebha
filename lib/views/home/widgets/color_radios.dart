import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_sebha/core/colors.dart';
import 'package:simple_sebha/providers/color_provider.dart';

class ColorRadios extends StatefulWidget {
  const ColorRadios({
    super.key,
  });

  @override
  State<ColorRadios> createState() => _ColorRadiosState();
}

class _ColorRadiosState extends State<ColorRadios> {
  int rad = 0;
  @override
  Widget build(BuildContext context) {
    ColorProvider colorProvider = Provider.of<ColorProvider>(context);
    return AnimatedOpacity(
      duration: const Duration(milliseconds: 500),
      opacity: colorProvider.colorRadiosOpacity,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: AppColors.colorIntValues.map((e) {
            return Radio(
              fillColor: MaterialStateColor.resolveWith((states) {
                return Color(e);
              }),
              value: e,
              groupValue: colorProvider.selectedColor,
              onChanged: colorProvider.changeColor,
            );
          }).toList()

          // [
          //   Radio(
          //     // activeColor: AppColors.blackColor,
          //     fillColor: MaterialStateColor.resolveWith((states) {
          //       return AppColors.blackColor;
          //     }),
          //     visualDensity: VisualDensity.compact,
          //     value: 0,
          //     groupValue: rad,
          //     onChanged: (value) {
          //       rad = value ?? rad;
          //       setState(() {});
          //     },
          //   ),
          //   Radio(
          //     fillColor: MaterialStateColor.resolveWith((states) {
          //       return AppColors.purpleColor;
          //     }),
          //     value: 1,
          //     groupValue: rad,
          //     onChanged: (value) {
          //       rad = value ?? rad;
          //       setState(() {});
          //     },
          //   ),
          //   Radio(
          //     fillColor: MaterialStateColor.resolveWith((states) {
          //       return AppColors.redColor;
          //     }),
          //     activeColor: AppColors.redColor,
          //     value: 2,
          //     groupValue: rad,
          //     onChanged: (value) {
          //       rad = value ?? rad;
          //       setState(() {});
          //     },
          //   ),
          // ],

          ),
    );
  }
}
