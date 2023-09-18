import 'package:flutter/material.dart';
import 'package:islami_app_c9_mon/layout/home_layout.dart';
import 'package:islami_app_c9_mon/moduls/quran/quran_details.dart';
import 'package:islami_app_c9_mon/moduls/splash/splash_screen.dart';

import 'core/theme/application_theme.dart';

void main() {
  runApp(const MyApplication());
}

class MyApplication extends StatelessWidget {
  const MyApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ApplicationTheme.lightTheme,
      darkTheme: ApplicationTheme.darkTheme,
      initialRoute: SplashScren.routeName,
      routes: {
        SplashScren.routeName: (context) => const SplashScren(),
        HomeLayout.routeName: (context) => HomeLayout(),
        QuranDetails.routeName: (context) => QuranDetails(),
      },
    );
  }
}
