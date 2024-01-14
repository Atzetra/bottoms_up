// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cards_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$currentCardsHash() => r'809c659ec8eb5c52f0ba1e8277b7726ef9d9c70c';

/// See also [currentCards].
@ProviderFor(currentCards)
final currentCardsProvider = AutoDisposeProvider<List<GameCardData>>.internal(
  currentCards,
  name: r'currentCardsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$currentCardsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef CurrentCardsRef = AutoDisposeProviderRef<List<GameCardData>>;
String _$gameCardPoolHash() => r'f9003e53497e5ea6d02197250edfc8ee87de8c03';

/// See also [GameCardPool].
@ProviderFor(GameCardPool)
final gameCardPoolProvider =
    AutoDisposeNotifierProvider<GameCardPool, List<GameCard>>.internal(
  GameCardPool.new,
  name: r'gameCardPoolProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$gameCardPoolHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$GameCardPool = AutoDisposeNotifier<List<GameCard>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
