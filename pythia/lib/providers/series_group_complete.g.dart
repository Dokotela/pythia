// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'series_group_complete.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$seriesGroupCompleteHash() =>
    r'a33072cf2c9f1f45ffdd0512b315dfaf7a7be5c7';

/// This provider is used to track the completion of a series group. Each
/// antigen has a multiple series of vaccines that can provide immunity.
/// These series are put into groups. This provider tracks the completion
/// of each series group.
///
/// Copied from [SeriesGroupComplete].
@ProviderFor(SeriesGroupComplete)
final seriesGroupCompleteProvider = AutoDisposeNotifierProvider<
    SeriesGroupComplete, Map<String, Map<String, bool>>>.internal(
  SeriesGroupComplete.new,
  name: r'seriesGroupCompleteProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$seriesGroupCompleteHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$SeriesGroupComplete
    = AutoDisposeNotifier<Map<String, Map<String, bool>>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
