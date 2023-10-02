import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theme_presistence/app/theme_app.dart';
import 'package:theme_presistence/bloc/theme/bloc/theme_bloc.dart';
import 'package:theme_presistence/preferences/theme_preference.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeBloc()..add(const GetPerservedThemeEvent()),
      child: BlocBuilder<ThemeBloc, ThemeState>(builder: (context, state) {
        if (state is ThemeLoaded) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Theme Preference',
            theme: state.themeData,
            home: const ThemeApp(),
          );
        }
        if (state is PerservedThemeLoaded) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Theme Preference',
            theme: _switchTheme(state.name),
            home: const ThemeApp(),
          );
        }
        return MaterialApp(
          title: 'Theme Demo',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const ThemeApp(),
        );
      }),
    );
  }
  
ThemeData _switchTheme(String name) {
  switch (name) {
    case ThemePrefer.lightTheme: {
      return appThemeData[ThemePrefer.lightTheme]!;
    }
    case ThemePrefer.darkTheme : {
      return appThemeData[ThemePrefer.darkTheme]!;
    }
    case ThemePrefer.deepOrangeThemeLight : {
      return appThemeData[ThemePrefer.deepOrangeThemeLight]!;
    }
    case ThemePrefer.deepPurpleThemeLight : {
      return appThemeData[ThemePrefer.deepPurpleThemeLight]!;
    }
    default:{
      return ThemeData(
        primarySwatch: Colors.blue,
      );
    }
  }
}
}
