import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theme_presistence/app/theme_app.dart';
import 'package:theme_presistence/bloc/theme/bloc/theme_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeBloc(),
      child: BlocBuilder<ThemeBloc, ThemeState>(builder: (context, state) {
        if (state is ThemeLoaded) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Theme Preference',
            theme: state.themeData,
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
}
