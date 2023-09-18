import 'dart:async';

import 'package:flutter/material.dart';
import 'package:islami_app_c9_mon/layout/home_layout.dart';

class SplashScren extends StatefulWidget {
  static const String routeName = "splash_screen";

  const SplashScren({super.key});

  @override
  State<SplashScren> createState() => _SplashScrenState();
}

class _SplashScrenState extends State<SplashScren> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, HomeLayout.routeName);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset(
        "assets/images/splash_light.png",
        fit: BoxFit.cover,
        width: double.infinity,
        height: double.infinity,
      ),
    );
  }
}
