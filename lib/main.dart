import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pharma_inc/generated/colors.gen.dart';
import 'package:pharma_inc/services/di.dart';
import 'package:pharma_inc/view/pages/patients_page.dart';
import 'package:pharma_inc/view/pages/splash_screen.dart';

Future<void> main() async {
  if (Platform.isFuchsia ||
      Platform.isLinux ||
      Platform.isMacOS ||
      Platform.isWindows ||
      kIsWeb) {
    throw UnimplementedError();
  }
  setupDiContainer();

  runApp(
    MaterialApp(
      home: const App(),
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: ColorName.softBlue),
          useMaterial3: true,
          appBarTheme: const AppBarTheme(
            centerTitle: true,
          )),
    ),
  );
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: it.allReady(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return const PatientsPage();
        }

        return const SplashScreen();
      },
    );
  }
}
