import 'package:flutter/material.dart';
import 'settings_service.dart';

class SettingsController with ChangeNotifier {
  SettingsController(this._settingsService);

final SettingsService _settingsService;

late ThemeMode _themeMode;

ThemeMode get themeMode => _themeMode;

// Load the user's  settings from the SettingsService

Future<void> loadSettings() async {
  _themeMode = await _settingsService.themeMode();

  notifyListeners();
}

  Future<void> udpdateThemeMode(ThemeMode? newThemeMode) async {

    if (newThemeMode == null) return;

    if (newThemeMode == _themeMode) return;

    _themeMode = newThemeMode;

    notifyListeners();

    await _settingsService.udpdateThemeMode(newThemeMode);
  }
}