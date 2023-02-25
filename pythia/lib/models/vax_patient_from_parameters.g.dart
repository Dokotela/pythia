// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vax_patient_from_parameters.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$vaxPatientFromParametersHash() =>
    r'7a2f76bee6ced8dff934ad7bcb15a7b4cc6ddad7';

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

abstract class _$VaxPatientFromParameters
    extends BuildlessAutoDisposeNotifier<VaxPatient?> {
  late final Parameters parameters;

  VaxPatient? build(
    Parameters parameters,
  );
}

/// See also [VaxPatientFromParameters].
@ProviderFor(VaxPatientFromParameters)
const vaxPatientFromParametersProvider = VaxPatientFromParametersFamily();

/// See also [VaxPatientFromParameters].
class VaxPatientFromParametersFamily extends Family<VaxPatient?> {
  /// See also [VaxPatientFromParameters].
  const VaxPatientFromParametersFamily();

  /// See also [VaxPatientFromParameters].
  VaxPatientFromParametersProvider call(
    Parameters parameters,
  ) {
    return VaxPatientFromParametersProvider(
      parameters,
    );
  }

  @override
  VaxPatientFromParametersProvider getProviderOverride(
    covariant VaxPatientFromParametersProvider provider,
  ) {
    return call(
      provider.parameters,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'vaxPatientFromParametersProvider';
}

/// See also [VaxPatientFromParameters].
class VaxPatientFromParametersProvider extends AutoDisposeNotifierProviderImpl<
    VaxPatientFromParameters, VaxPatient?> {
  /// See also [VaxPatientFromParameters].
  VaxPatientFromParametersProvider(
    this.parameters,
  ) : super.internal(
          () => VaxPatientFromParameters()..parameters = parameters,
          from: vaxPatientFromParametersProvider,
          name: r'vaxPatientFromParametersProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$vaxPatientFromParametersHash,
          dependencies: VaxPatientFromParametersFamily._dependencies,
          allTransitiveDependencies:
              VaxPatientFromParametersFamily._allTransitiveDependencies,
        );

  final Parameters parameters;

  @override
  bool operator ==(Object other) {
    return other is VaxPatientFromParametersProvider &&
        other.parameters == parameters;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, parameters.hashCode);

    return _SystemHash.finish(hash);
  }

  @override
  VaxPatient? runNotifierBuild(
    covariant VaxPatientFromParameters notifier,
  ) {
    return notifier.build(
      parameters,
    );
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
