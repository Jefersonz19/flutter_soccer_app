import 'package:flutter/material.dart';

// Store and retrieves user settings 
class SettingsService {

  // Load the User's preferred ThemeMode
  Future<ThemeMode> themeMode() async => ThemeMode.system;

  Future<void> udpdateThemeMode(ThemeMode theme) async {
    
  }
}