// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assessment_parameters.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$assessmentParametersHash() =>
    r'431dfc2cef3fd9bdf6a95681ab40ce09015a4cec';

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

abstract class _$AssessmentParameters
    extends BuildlessAutoDisposeNotifier<VaxPatient?> {
  late final Parameters parameters;

  VaxPatient? build(
    Parameters parameters,
  );
}

/// See also [AssessmentParameters].
@ProviderFor(AssessmentParameters)
const assessmentParametersProvider = AssessmentParametersFamily();

/// See also [AssessmentParameters].
class AssessmentParametersFamily extends Family<VaxPatient?> {
  /// See also [AssessmentParameters].
  const AssessmentParametersFamily();

  /// See also [AssessmentParameters].
  AssessmentParametersProvider call(
    Parameters parameters,
  ) {
    return AssessmentParametersProvider(
      parameters,
    );
  }

  @override
  AssessmentParametersProvider getProviderOverride(
    covariant AssessmentParametersProvider provider,
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
  String? get name => r'assessmentParametersProvider';
}

/// See also [AssessmentParameters].
class AssessmentParametersProvider
    extends AutoDisposeNotifierProviderImpl<AssessmentParameters, VaxPatient?> {
  /// See also [AssessmentParameters].
  AssessmentParametersProvider(
    this.parameters,
  ) : super.internal(
          () => AssessmentParameters()..parameters = parameters,
          from: assessmentParametersProvider,
          name: r'assessmentParametersProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$assessmentParametersHash,
          dependencies: AssessmentParametersFamily._dependencies,
          allTransitiveDependencies:
              AssessmentParametersFamily._allTransitiveDependencies,
        );

  final Parameters parameters;

  @override
  bool operator ==(Object other) {
    return other is AssessmentParametersProvider &&
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
    covariant AssessmentParameters notifier,
  ) {
    return notifier.build(
      parameters,
    );
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
