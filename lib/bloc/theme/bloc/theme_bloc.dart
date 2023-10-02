import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theme_presistence/local/shared_pref.dart';
import 'package:theme_presistence/preferences/theme_preference.dart';

part 'theme_event.dart';
part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(ThemeInitial()) {
    on<ChangeThemeEvents>((event, emit) {
      SharedPref.setThemeId(value: event.name);
      emit(ThemeLoaded(themeData: appThemeData[event.name]!));
    });

    on<GetPerservedThemeEvent>((event, emit) {
      SharedPref.getThemeId().then((value) {
        add(GetPerservedThemeEventLoad(value));
      });
    });

    on<GetPerservedThemeEventLoad>((event, emit) { 
      emit(PerservedThemeLoaded(name : event.name));
      });
  }
}
