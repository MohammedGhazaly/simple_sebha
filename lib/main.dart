import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_sebha/core/colors.dart';
import 'package:simple_sebha/core/shared_pref.dart';
import 'package:simple_sebha/core/shared_pref_keys.dart';
import 'package:simple_sebha/providers/color_provider.dart';
import 'package:simple_sebha/providers/sebha_provider.dart';
import 'package:simple_sebha/views/home/home_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Prefs.init();
  int selectedColor =
      Prefs.getInt(AppSharedPrefKeys.colorKey) ?? AppColors.colorIntValues[0];
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<ColorProvider>(
        create: (context) {
          return ColorProvider(selectedColor: selectedColor);
        },
      ),
      ChangeNotifierProvider<SebhaProvider>(
        create: (context) {
          return SebhaProvider();
        },
      ),
    ],
    child: const Sebha(),
  ));
}

class Sebha extends StatelessWidget {
  const Sebha({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    ColorProvider colorProvider = Provider.of<ColorProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(colorProvider.selectedColor),
        appBarTheme: const AppBarTheme(foregroundColor: Colors.white),
        useMaterial3: true,
      ),
      home: const HomView(),
    );
  }
}
