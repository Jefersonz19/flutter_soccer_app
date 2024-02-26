import 'package:equatable/equatable.dart';
import 'package:flutter_soccer_app/src/theme/theme.dart';
import 'package:meta/meta.dart';

sealed class ThemeEvent extends Equatable {
  const ThemeEvent(List<AppTheme> list);

  @override
  List<Object> get props => [];
}

class ThemeChanged extends ThemeEvent {
  final AppTheme theme;

  ThemeChanged({
    required this.theme,
  }): super([theme]);
}