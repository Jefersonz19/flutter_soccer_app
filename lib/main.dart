import 'package:flutter/material.dart';

import 'src/settings/settings_controller.dart';
import 'src/settings/settings_service.dart';
import 'src/app.dart';


// Elaborated by Jeferson Zapata cc 1017247007

void main() async {

  // Load the User's preferred Theme while the splash screen is displayed

  final settingsController = SettingsController(SettingsService());

  await settingsController.loadSettings();

  runApp(MyApp(settingsController: settingsController));
}

