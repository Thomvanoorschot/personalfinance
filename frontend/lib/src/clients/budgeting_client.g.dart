// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'budgeting_client.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getTransactionsHash() => r'1edceba780a7062b07f680357445c5b1009e7d81';

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

/// See also [getTransactions].
@ProviderFor(getTransactions)
const getTransactionsProvider = GetTransactionsFamily();

/// See also [getTransactions].
class GetTransactionsFamily
    extends Family<AsyncValue<GetTransactionsResponse>> {
  /// See also [getTransactions].
  const GetTransactionsFamily();

  /// See also [getTransactions].
  GetTransactionsProvider call({
    required GetTransactionsRequest req,
  }) {
    return GetTransactionsProvider(
      req: req,
    );
  }

  @override
  GetTransactionsProvider getProviderOverride(
    covariant GetTransactionsProvider provider,
  ) {
    return call(
      req: provider.req,
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
  String? get name => r'getTransactionsProvider';
}

/// See also [getTransactions].
class GetTransactionsProvider
    extends AutoDisposeFutureProvider<GetTransactionsResponse> {
  /// See also [getTransactions].
  GetTransactionsProvider({
    required GetTransactionsRequest req,
  }) : this._internal(
          (ref) => getTransactions(
            ref as GetTransactionsRef,
            req: req,
          ),
          from: getTransactionsProvider,
          name: r'getTransactionsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getTransactionsHash,
          dependencies: GetTransactionsFamily._dependencies,
          allTransitiveDependencies:
              GetTransactionsFamily._allTransitiveDependencies,
          req: req,
        );

  GetTransactionsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.req,
  }) : super.internal();

  final GetTransactionsRequest req;

  @override
  Override overrideWith(
    FutureOr<GetTransactionsResponse> Function(GetTransactionsRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetTransactionsProvider._internal(
        (ref) => create(ref as GetTransactionsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        req: req,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<GetTransactionsResponse> createElement() {
    return _GetTransactionsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetTransactionsProvider && other.req == req;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, req.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetTransactionsRef
    on AutoDisposeFutureProviderRef<GetTransactionsResponse> {
  /// The parameter `req` of this provider.
  GetTransactionsRequest get req;
}

class _GetTransactionsProviderElement
    extends AutoDisposeFutureProviderElement<GetTransactionsResponse>
    with GetTransactionsRef {
  _GetTransactionsProviderElement(super.provider);

  @override
  GetTransactionsRequest get req => (origin as GetTransactionsProvider).req;
}

String _$getTransactionCategoryGroupsHash() =>
    r'663725300fa140139088ea491f2921fb73387891';

/// See also [getTransactionCategoryGroups].
@ProviderFor(getTransactionCategoryGroups)
const getTransactionCategoryGroupsProvider =
    GetTransactionCategoryGroupsFamily();

/// See also [getTransactionCategoryGroups].
class GetTransactionCategoryGroupsFamily
    extends Family<AsyncValue<GetTransactionCategoryGroupsResponse>> {
  /// See also [getTransactionCategoryGroups].
  const GetTransactionCategoryGroupsFamily();

  /// See also [getTransactionCategoryGroups].
  GetTransactionCategoryGroupsProvider call({
    required GetTransactionCategoryGroupsRequest req,
  }) {
    return GetTransactionCategoryGroupsProvider(
      req: req,
    );
  }

  @override
  GetTransactionCategoryGroupsProvider getProviderOverride(
    covariant GetTransactionCategoryGroupsProvider provider,
  ) {
    return call(
      req: provider.req,
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
  String? get name => r'getTransactionCategoryGroupsProvider';
}

/// See also [getTransactionCategoryGroups].
class GetTransactionCategoryGroupsProvider
    extends AutoDisposeFutureProvider<GetTransactionCategoryGroupsResponse> {
  /// See also [getTransactionCategoryGroups].
  GetTransactionCategoryGroupsProvider({
    required GetTransactionCategoryGroupsRequest req,
  }) : this._internal(
          (ref) => getTransactionCategoryGroups(
            ref as GetTransactionCategoryGroupsRef,
            req: req,
          ),
          from: getTransactionCategoryGroupsProvider,
          name: r'getTransactionCategoryGroupsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getTransactionCategoryGroupsHash,
          dependencies: GetTransactionCategoryGroupsFamily._dependencies,
          allTransitiveDependencies:
              GetTransactionCategoryGroupsFamily._allTransitiveDependencies,
          req: req,
        );

  GetTransactionCategoryGroupsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.req,
  }) : super.internal();

  final GetTransactionCategoryGroupsRequest req;

  @override
  Override overrideWith(
    FutureOr<GetTransactionCategoryGroupsResponse> Function(
            GetTransactionCategoryGroupsRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetTransactionCategoryGroupsProvider._internal(
        (ref) => create(ref as GetTransactionCategoryGroupsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        req: req,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<GetTransactionCategoryGroupsResponse>
      createElement() {
    return _GetTransactionCategoryGroupsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetTransactionCategoryGroupsProvider && other.req == req;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, req.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetTransactionCategoryGroupsRef
    on AutoDisposeFutureProviderRef<GetTransactionCategoryGroupsResponse> {
  /// The parameter `req` of this provider.
  GetTransactionCategoryGroupsRequest get req;
}

class _GetTransactionCategoryGroupsProviderElement
    extends AutoDisposeFutureProviderElement<
        GetTransactionCategoryGroupsResponse>
    with GetTransactionCategoryGroupsRef {
  _GetTransactionCategoryGroupsProviderElement(super.provider);

  @override
  GetTransactionCategoryGroupsRequest get req =>
      (origin as GetTransactionCategoryGroupsProvider).req;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
