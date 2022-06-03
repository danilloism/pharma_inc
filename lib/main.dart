import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'view/ios/ios.app.dart';
import 'modules/core/services/logger_service.dart';
import 'view/android/android.app.dart';

void main() {
  if (Platform.isFuchsia ||
      Platform.isLinux ||
      Platform.isMacOS ||
      /*Platform.isWindows ||*/
      kIsWeb) {
    throw UnimplementedError();
  }

  runApp(
    ProviderScope(
      observers: [LoggerService()],
      child: Platform.isAndroid ||
              Platform.isWindows //TODO: tirar isso aqui depois
          ? const AndroidApp()
          : const IosApp(),
    ),
  );
}
