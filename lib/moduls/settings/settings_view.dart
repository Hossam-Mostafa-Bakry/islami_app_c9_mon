import 'package:flutter/material.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Settings View",
        style: TextStyle(
          fontSize: 45,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}