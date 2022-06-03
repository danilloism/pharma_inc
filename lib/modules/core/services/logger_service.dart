// ignore_for_file: avoid_print

import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoggerService extends ProviderObserver {
  @override
  void didUpdateProvider(
    ProviderBase provider,
    Object? previousValue,
    Object? newValue,
    ProviderContainer container,
  ) {
    print(
        '[${provider.name ?? provider.runtimeType} updated]\nPrevious value: $previousValue\nNew value: $newValue');
  }
}
