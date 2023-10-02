part of 'theme_bloc.dart';

sealed class ThemeEvent extends Equatable {
  const ThemeEvent();
  }

  class ChangeThemeEvents extends ThemeEvent {
    final String name;

  const ChangeThemeEvents({required this.name});
  @override
  List<Object?> get props => [name];

  }
