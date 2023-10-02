import 'package:flutter/material.dart';
import 'package:theme_presistence/app/theme_app.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Theme Preference',
      home: ThemeApp(),
    );
  }
}

