
import 'package:flutter/material.dart';

import 'package:flutter_soccer_app/src/pages/first_page.dart';
import 'package:flutter_soccer_app/src/pages/home.dart';
import 'package:flutter_soccer_app/src/pages/scnd_page.dart';
import 'package:flutter_soccer_app/src/pages/team_list.dart';

import 'settings/settings_controller.dart';
// import 'settings/settings_view.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key, 
  required this.settingsController});

  final SettingsController settingsController;
  // This widget is the root of the application.
  @override
  Widget build(BuildContext context) {

    // The ListenableBuilder  Widget listens to the SettingsController for changes.
    // Whenever the user updates their settings, the MaterialApp is rebuilt.
    return ListenableBuilder(
      listenable: settingsController, 
      builder: (BuildContext context, Widget? child) {
    return MaterialApp(
      title: "Flutter Soccer App",

      // Define a light an dark color theme. Then, read the user's preferred ThemeMode from the SettingsController
      // to display the correct theme.
      theme: ThemeData.dark(),
      themeMode: settingsController.themeMode,

      initialRoute: '/',
      routes:  {
        '/':(context) => const Home(),
        '/firstroute':(context) => const FirstPage(),
        '/scndroute':(context) => const ScndPage(),
        '/teamlist': (context) => const listpage(),
      },
      // Salida por defecto cuando no encuentra una ruta válida
      onGenerateRoute: (settings) {
        return MaterialPageRoute(
          builder: (context) => const Home(),
        );
      },
    );
    },
    );
  }
}

