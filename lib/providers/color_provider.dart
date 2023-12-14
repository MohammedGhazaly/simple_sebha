import 'package:flutter/material.dart';
import 'package:simple_sebha/core/shared_pref.dart';
import 'package:simple_sebha/core/shared_pref_keys.dart';

class ColorProvider extends ChangeNotifier {
  double colorRadiosOpacity = 0;
  late int selectedColor;
  ColorProvider({required this.selectedColor});

  void toggleColorPelete() {
    if (colorRadiosOpacity == 0) {
      colorRadiosOpacity = 1;
    } else {
      colorRadiosOpacity = 0;
    }
    notifyListeners();
  }

  void changeColor(int? colorValue) async {
    if (colorRadiosOpacity == 1) {
      selectedColor = colorValue ?? selectedColor;
      await Prefs.setInt(AppSharedPrefKeys.colorKey, selectedColor);
      notifyListeners();
    }
  }
}
