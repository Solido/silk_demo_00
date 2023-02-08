// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delta.pod.dart';

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

String _$DeltaRmHash() => r'a4b80d86ca0c025931506fc6f76ee311a666c6f0';

/// See also [DeltaRm].
final deltaRmProvider = AutoDisposeNotifierProvider<DeltaRm, double>(
  DeltaRm.new,
  name: r'deltaRmProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$DeltaRmHash,
);
typedef DeltaRmRef = AutoDisposeNotifierProviderRef<double>;

abstract class _$DeltaRm extends AutoDisposeNotifier<double> {
  @override
  double build();
}

String _$DeltaAddHash() => r'93e183d07dbb5c5a224d34085226aa449ddd54df';

/// See also [DeltaAdd].
final deltaAddProvider = AutoDisposeNotifierProvider<DeltaAdd, double>(
  DeltaAdd.new,
  name: r'deltaAddProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$DeltaAddHash,
);
typedef DeltaAddRef = AutoDisposeNotifierProviderRef<double>;

abstract class _$DeltaAdd extends AutoDisposeNotifier<double> {
  @override
  double build();
}
