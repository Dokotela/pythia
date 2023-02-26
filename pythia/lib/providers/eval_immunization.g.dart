// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'eval_immunization.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$evalImmunizationHash() => r'03ccddb70086477c1601d5cc01d94ed5944f5e68';

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

abstract class _$EvalImmunization
    extends BuildlessAutoDisposeNotifier<ImmEval> {
  late final String id;

  ImmEval build(
    String id,
  );
}

/// See also [EvalImmunization].
@ProviderFor(EvalImmunization)
const evalImmunizationProvider = EvalImmunizationFamily();

/// See also [EvalImmunization].
class EvalImmunizationFamily extends Family<ImmEval> {
  /// See also [EvalImmunization].
  const EvalImmunizationFamily();

  /// See also [EvalImmunization].
  EvalImmunizationProvider call(
    String id,
  ) {
    return EvalImmunizationProvider(
      id,
    );
  }

  @override
  EvalImmunizationProvider getProviderOverride(
    covariant EvalImmunizationProvider provider,
  ) {
    return call(
      provider.id,
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
  String? get name => r'evalImmunizationProvider';
}

/// See also [EvalImmunization].
class EvalImmunizationProvider
    extends AutoDisposeNotifierProviderImpl<EvalImmunization, ImmEval> {
  /// See also [EvalImmunization].
  EvalImmunizationProvider(
    this.id,
  ) : super.internal(
          () => EvalImmunization()..id = id,
          from: evalImmunizationProvider,
          name: r'evalImmunizationProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$evalImmunizationHash,
          dependencies: EvalImmunizationFamily._dependencies,
          allTransitiveDependencies:
              EvalImmunizationFamily._allTransitiveDependencies,
        );

  final String id;

  @override
  bool operator ==(Object other) {
    return other is EvalImmunizationProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }

  @override
  ImmEval runNotifierBuild(
    covariant EvalImmunization notifier,
  ) {
    return notifier.build(
      id,
    );
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
