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
    return  BlocProvider(
      create: (context) => ThemeBloc(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Theme Preference',
        home: ThemeApp(),
      ),
    );
  }
}
