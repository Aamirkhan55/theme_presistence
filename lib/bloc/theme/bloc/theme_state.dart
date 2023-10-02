part of 'theme_bloc.dart';

sealed class ThemeState extends Equatable {
  const ThemeState();
  
}

final class ThemeInitial extends ThemeState {
  @override
  
  List<Object?> get props => [];
}

final class ThemeLoaded extends ThemeState {
  final ThemeData themeData;

  const ThemeLoaded({required this.themeData });
  @override
  List<Object?> get props => [themeData];

}
