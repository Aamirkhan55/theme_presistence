import 'package:flutter/material.dart';
import 'package:theme_presistence/preferences/theme_preference.dart';

class ThemePreferencesPage extends StatelessWidget {
  const ThemePreferencesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme Preference'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        itemCount: ThemePrefer.themePrefList.length,
        itemBuilder: (context, index) {
          final selectedTheme = ThemePrefer.themePrefList[index];
          return Container(
            height: 50,
            margin: const EdgeInsets.all(8),
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(20),
              color: Colors.blue,
            ),
            child: Center(
              child: Text(selectedTheme),
            ),
          );
        }),
    );
  }
}