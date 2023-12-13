import 'package:flutter/material.dart';
import 'package:simple_sebha/core/colors.dart';
import 'package:simple_sebha/views/home/home_view.dart';

void main() {
  runApp(const Sebha());
}

class Sebha extends StatelessWidget {
  const Sebha({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          appBarTheme: AppBarTheme(
              backgroundColor: AppColors.blackColor,
              foregroundColor: Colors.white),
          useMaterial3: true,
        ),
        home: const HomView());
  }
}
