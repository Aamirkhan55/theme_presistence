part of 'theme_bloc.dart';

abstract class ThemeState extends Equatable {
  const ThemeState();
}

class ThemeInitial extends ThemeState {
  @override
  List<Object?> get props => [];
}

class ThemeLoaded extends ThemeState {
  final ThemeData themeData;
  const ThemeLoaded({required this.themeData});

  @override
  List<Object?> get props => [themeData];
}

class PerservedThemeLoaded extends ThemeState {
  final String name;
  const PerservedThemeLoaded({required this.name});

  @override
  List<Object?> get props => [name];
}

class GetPerservedThemeEvent extends ThemeEvent {
  const GetPerservedThemeEvent();
  @override
  List<Object?> get props => [];
}

class GetPerservedThemeEventLoad extends ThemeEvent {

  final String name;

  const GetPerservedThemeEventLoad(this.name);

  @override
  List<Object?> get props => [name];
}
