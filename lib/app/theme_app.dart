import 'package:flutter/material.dart';
import 'package:theme_presistence/preferences/theme_page.dart';

class ThemeApp extends StatelessWidget {
  const ThemeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme App'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const ThemePreferencesPage()));
            }, 
            icon:const Icon(Icons.brightness_4_outlined)
            )
        ],
      ),
      body: const Center(
        child: Text(
          'Play With Theme',
          style: TextStyle(
            fontSize: 26,
          ),
          ),
      ),
    );
  }
}