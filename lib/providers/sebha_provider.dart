import 'package:flutter/material.dart';

class SebhaProvider extends ChangeNotifier {
  int goal = 33;
  int total = 0;
  int roundTasbeh = 0;
  int timeRepeat = 0;
  List<int> golas = [10000, 1000, 100, 33];

  void incrementGoal() {
    goal++;
    notifyListeners();
  }

  void decrementGoal() {
    goal--;
    notifyListeners();
  }

  void chooseFromSpecefiedGoals(int choosenGoal) {
    goal = choosenGoal;
    notifyListeners();
  }

  void incrementTasbeeh() {
    roundTasbeh++;
    if (roundTasbeh == goal) {
      roundTasbeh = 0;
      timeRepeat++;
    }
    total++;
    notifyListeners();
  }
}
