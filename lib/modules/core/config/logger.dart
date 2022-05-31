// ignore_for_file: avoid_print

import 'package:flutter_riverpod/flutter_riverpod.dart';

class Logger extends ProviderObserver {
  @override
  void didUpdateProvider(
    ProviderBase provider,
    Object? previousValue,
    Object? newValue,
    ProviderContainer container,
  ) {
    print(
        '''[${provider.name ?? provider.runtimeType} updated] Previous value: $previousValue
    [${provider.name ?? provider.runtimeType} updated] New value: $newValue''');
  }
}
