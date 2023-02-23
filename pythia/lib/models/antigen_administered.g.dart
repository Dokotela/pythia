// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'antigen_administered.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$antigenAdministeredHash() =>
    r'4faceab2067451de1ad63561230e385f11a24417';

/// Map of each Antigen and it's associated Immunizations
///
/// Copied from [AntigenAdministered].
@ProviderFor(AntigenAdministered)
final antigenAdministeredProvider = AutoDisposeNotifierProvider<
    AntigenAdministered, Map<String, List<Immunization>>>.internal(
  AntigenAdministered.new,
  name: r'antigenAdministeredProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$antigenAdministeredHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$AntigenAdministered
    = AutoDisposeNotifier<Map<String, List<Immunization>>>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
