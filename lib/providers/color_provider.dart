import 'package:flutter/material.dart';
import 'package:simple_sebha/core/colors.dart';

class ColorProvider extends ChangeNotifier {
  double colorRadiosOpacity = 0;
  int selectedColor = AppColors.colorIntValues[0];

  void toggleColorPelete() {
    if (colorRadiosOpacity == 0) {
      colorRadiosOpacity = 1;
    } else {
      colorRadiosOpacity = 0;
    }
    notifyListeners();
  }

  void changeColor(int? colorValue) {
    selectedColor = colorValue ?? selectedColor;
    notifyListeners();
  }
}
