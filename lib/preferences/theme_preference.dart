

import 'package:flutter/material.dart';

class ThemePrefer {
static const String lightTheme = "LightTheme";
static const String darkTheme = "DarkTheme";
static const String deepPurpleThemeLight = "DeepPurpleThemeLight";
static const String deepOrangeThemeLight = "DeepOrangeThemeLight";

static List<String> themePrefList = [
"LightTheme",
"DarkTheme",
"DeepPurpleThemeLight",
"DeepOrangeThemeLight",
];
}

final appThemeData = {
  ThemePrefer.lightTheme : ThemeData(
    brightness: Brightness.light,
  ),

  ThemePrefer.darkTheme : ThemeData(
    brightness: Brightness.dark,
  ),

  ThemePrefer.deepOrangeThemeLight : ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.deepOrange,
    primarySwatch: Colors.deepOrange,
  ),

  ThemePrefer.deepPurpleThemeLight : ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.deepPurple,
    primarySwatch: Colors.deepPurple,
  )
};
