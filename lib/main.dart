import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pharma_inc/modules/patients/provider/patients_provider.dart';
import 'package:pharma_inc/view/android/pages/patients_page.dart';
import 'package:pharma_inc/view/splash_screen.dart';

import 'modules/core/services/logger_service.dart';

Future<void> main() async {
  if (Platform.isFuchsia ||
      Platform.isLinux ||
      Platform.isMacOS ||
      Platform.isWindows ||
      kIsWeb) {
    throw UnimplementedError();
  }

  runApp(const SplashScreen());

  final container = ProviderContainer(observers: [LoggerService()]);

  await container
      .read(PatientsProvider.stateNotifierProvider.notifier)
      .loadPatients();

  runApp(
    UncontrolledProviderScope(
      container: container,
      child: MaterialApp(
        home: const PatientsPage(),
        theme: ThemeData(
            scaffoldBackgroundColor: Colors.white,
            backgroundColor: Colors.white,
            appBarTheme: const AppBarTheme(
              centerTitle: true,
              elevation: 0,
              color: Colors.white,
            )),
      ),
    ),
  );
}
