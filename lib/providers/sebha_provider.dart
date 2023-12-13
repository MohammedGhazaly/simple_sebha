import 'package:flutter/material.dart';
import 'package:simple_sebha/core/shared_pref.dart';
import 'package:simple_sebha/core/shared_pref_keys.dart';

class SebhaProvider extends ChangeNotifier {
  int goal;
  int total;
  int roundTasbeh;
  int timeRepeat;

  SebhaProvider({
    required this.goal,
    required this.total,
    required this.roundTasbeh,
    required this.timeRepeat,
  });

  List<int> golas = [10000, 1000, 100, 33];

  void incrementGoal() async {
    goal++;
    notifyListeners();
    await Prefs.setInt(AppSharedPrefKeys.goal, goal);
  }

  void decrementGoal() async {
    if (goal != 1) {
      goal--;
      notifyListeners();
      await Prefs.setInt(AppSharedPrefKeys.goal, goal);
    }
  }

  void chooseFromSpecefiedGoals(int choosenGoal) async {
    goal = choosenGoal;
    await Prefs.setInt(AppSharedPrefKeys.goal, goal);

    notifyListeners();
  }

  void incrementTasbeeh() async {
    roundTasbeh++;
    if (roundTasbeh >= goal) {
      roundTasbeh = 0;
      timeRepeat++;
    }
    total++;
    await Prefs.setInt(AppSharedPrefKeys.total, total);
    await Prefs.setInt(AppSharedPrefKeys.roundTasbeh, roundTasbeh);
    await Prefs.setInt(AppSharedPrefKeys.timeRepeat, timeRepeat);
    notifyListeners();
  }

  void reset() async {
    goal = 33;
    roundTasbeh = 0;
    timeRepeat = 0;
    total = 0;
    await Prefs.setInt(AppSharedPrefKeys.goal, goal);
    await Prefs.setInt(AppSharedPrefKeys.total, total);
    await Prefs.setInt(AppSharedPrefKeys.roundTasbeh, roundTasbeh);
    await Prefs.setInt(AppSharedPrefKeys.timeRepeat, timeRepeat);
    notifyListeners();
  }
}
