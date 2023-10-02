import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:theme_presistence/preferences/theme_preference.dart';

part 'theme_event.dart';
part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(ThemeInitial()) {
    on<ChangeThemeEvents>((event, emit) {
      emit(ThemeLoaded(themeData: appThemeData[event.name]!));
    });
  }
}
