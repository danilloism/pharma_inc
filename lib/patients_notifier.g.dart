// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patients_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// ignore_for_file: avoid_private_typedef_functions, non_constant_identifier_names, subtype_of_sealed_class, invalid_use_of_internal_member, unused_element, constant_identifier_names, unnecessary_raw_strings, library_private_types_in_public_api

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

String _$PatientsNotifierRHash() => r'd5be26ee7944f026382389b9e6a1daf1c6276fb7';

/// See also [PatientsNotifierR].
class PatientsNotifierRProvider
    extends AutoDisposeNotifierProviderImpl<PatientsNotifierR, PatientsState> {
  PatientsNotifierRProvider(
    this.repo,
  ) : super(
          () => PatientsNotifierR()..repo = repo,
          from: patientsNotifierRProvider,
          name: r'patientsNotifierRProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$PatientsNotifierRHash,
        );

  final Repository repo;

  @override
  bool operator ==(Object other) {
    return other is PatientsNotifierRProvider && other.repo == repo;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, repo.hashCode);

    return _SystemHash.finish(hash);
  }

  @override
  PatientsState runNotifierBuild(
    covariant _$PatientsNotifierR notifier,
  ) {
    return notifier.build(
      repo,
    );
  }
}

typedef PatientsNotifierRRef = AutoDisposeNotifierProviderRef<PatientsState>;

/// See also [PatientsNotifierR].
final patientsNotifierRProvider = PatientsNotifierRFamily();

class PatientsNotifierRFamily extends Family<PatientsState> {
  PatientsNotifierRFamily();

  PatientsNotifierRProvider call(
    Repository repo,
  ) {
    return PatientsNotifierRProvider(
      repo,
    );
  }

  @override
  AutoDisposeNotifierProviderImpl<PatientsNotifierR, PatientsState>
      getProviderOverride(
    covariant PatientsNotifierRProvider provider,
  ) {
    return call(
      provider.repo,
    );
  }

  @override
  List<ProviderOrFamily>? get allTransitiveDependencies => null;

  @override
  List<ProviderOrFamily>? get dependencies => null;

  @override
  String? get name => r'patientsNotifierRProvider';
}

abstract class _$PatientsNotifierR
    extends BuildlessAutoDisposeNotifier<PatientsState> {
  late final Repository repo;

  PatientsState build(
    Repository repo,
  );
}
