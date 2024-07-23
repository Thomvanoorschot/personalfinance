// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banking_client.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getBanksHash() => r'b3e2f180ae1a945dfcd623db8ae0dfbad6b0153a';

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

/// See also [getBanks].
@ProviderFor(getBanks)
const getBanksProvider = GetBanksFamily();

/// See also [getBanks].
class GetBanksFamily extends Family<AsyncValue<GetBanksResponse>> {
  /// See also [getBanks].
  const GetBanksFamily();

  /// See also [getBanks].
  GetBanksProvider call({
    required GetBanksRequest req,
  }) {
    return GetBanksProvider(
      req: req,
    );
  }

  @override
  GetBanksProvider getProviderOverride(
    covariant GetBanksProvider provider,
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
  String? get name => r'getBanksProvider';
}

/// See also [getBanks].
class GetBanksProvider extends AutoDisposeFutureProvider<GetBanksResponse> {
  /// See also [getBanks].
  GetBanksProvider({
    required GetBanksRequest req,
  }) : this._internal(
          (ref) => getBanks(
            ref as GetBanksRef,
            req: req,
          ),
          from: getBanksProvider,
          name: r'getBanksProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getBanksHash,
          dependencies: GetBanksFamily._dependencies,
          allTransitiveDependencies: GetBanksFamily._allTransitiveDependencies,
          req: req,
        );

  GetBanksProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.req,
  }) : super.internal();

  final GetBanksRequest req;

  @override
  Override overrideWith(
    FutureOr<GetBanksResponse> Function(GetBanksRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetBanksProvider._internal(
        (ref) => create(ref as GetBanksRef),
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
  AutoDisposeFutureProviderElement<GetBanksResponse> createElement() {
    return _GetBanksProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetBanksProvider && other.req == req;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, req.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetBanksRef on AutoDisposeFutureProviderRef<GetBanksResponse> {
  /// The parameter `req` of this provider.
  GetBanksRequest get req;
}

class _GetBanksProviderElement
    extends AutoDisposeFutureProviderElement<GetBanksResponse>
    with GetBanksRef {
  _GetBanksProviderElement(super.provider);

  @override
  GetBanksRequest get req => (origin as GetBanksProvider).req;
}

String _$createRequisitionHash() => r'1772948fd2cf3d29ddcc9124e55a99150129d1ed';

/// See also [createRequisition].
@ProviderFor(createRequisition)
const createRequisitionProvider = CreateRequisitionFamily();

/// See also [createRequisition].
class CreateRequisitionFamily
    extends Family<AsyncValue<CreateRequisitionResponse>> {
  /// See also [createRequisition].
  const CreateRequisitionFamily();

  /// See also [createRequisition].
  CreateRequisitionProvider call({
    required CreateRequisitionRequest req,
  }) {
    return CreateRequisitionProvider(
      req: req,
    );
  }

  @override
  CreateRequisitionProvider getProviderOverride(
    covariant CreateRequisitionProvider provider,
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
  String? get name => r'createRequisitionProvider';
}

/// See also [createRequisition].
class CreateRequisitionProvider
    extends AutoDisposeFutureProvider<CreateRequisitionResponse> {
  /// See also [createRequisition].
  CreateRequisitionProvider({
    required CreateRequisitionRequest req,
  }) : this._internal(
          (ref) => createRequisition(
            ref as CreateRequisitionRef,
            req: req,
          ),
          from: createRequisitionProvider,
          name: r'createRequisitionProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$createRequisitionHash,
          dependencies: CreateRequisitionFamily._dependencies,
          allTransitiveDependencies:
              CreateRequisitionFamily._allTransitiveDependencies,
          req: req,
        );

  CreateRequisitionProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.req,
  }) : super.internal();

  final CreateRequisitionRequest req;

  @override
  Override overrideWith(
    FutureOr<CreateRequisitionResponse> Function(CreateRequisitionRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CreateRequisitionProvider._internal(
        (ref) => create(ref as CreateRequisitionRef),
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
  AutoDisposeFutureProviderElement<CreateRequisitionResponse> createElement() {
    return _CreateRequisitionProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CreateRequisitionProvider && other.req == req;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, req.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin CreateRequisitionRef
    on AutoDisposeFutureProviderRef<CreateRequisitionResponse> {
  /// The parameter `req` of this provider.
  CreateRequisitionRequest get req;
}

class _CreateRequisitionProviderElement
    extends AutoDisposeFutureProviderElement<CreateRequisitionResponse>
    with CreateRequisitionRef {
  _CreateRequisitionProviderElement(super.provider);

  @override
  CreateRequisitionRequest get req => (origin as CreateRequisitionProvider).req;
}

String _$getBankAccountsHash() => r'f0bcd38c8f468e8f0b8ed34d99ca529412d2d72c';

/// See also [getBankAccounts].
@ProviderFor(getBankAccounts)
const getBankAccountsProvider = GetBankAccountsFamily();

/// See also [getBankAccounts].
class GetBankAccountsFamily
    extends Family<AsyncValue<GetBankAccountsResponse>> {
  /// See also [getBankAccounts].
  const GetBankAccountsFamily();

  /// See also [getBankAccounts].
  GetBankAccountsProvider call({
    required GetBankAccountsRequest req,
  }) {
    return GetBankAccountsProvider(
      req: req,
    );
  }

  @override
  GetBankAccountsProvider getProviderOverride(
    covariant GetBankAccountsProvider provider,
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
  String? get name => r'getBankAccountsProvider';
}

/// See also [getBankAccounts].
class GetBankAccountsProvider
    extends AutoDisposeFutureProvider<GetBankAccountsResponse> {
  /// See also [getBankAccounts].
  GetBankAccountsProvider({
    required GetBankAccountsRequest req,
  }) : this._internal(
          (ref) => getBankAccounts(
            ref as GetBankAccountsRef,
            req: req,
          ),
          from: getBankAccountsProvider,
          name: r'getBankAccountsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getBankAccountsHash,
          dependencies: GetBankAccountsFamily._dependencies,
          allTransitiveDependencies:
              GetBankAccountsFamily._allTransitiveDependencies,
          req: req,
        );

  GetBankAccountsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.req,
  }) : super.internal();

  final GetBankAccountsRequest req;

  @override
  Override overrideWith(
    FutureOr<GetBankAccountsResponse> Function(GetBankAccountsRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetBankAccountsProvider._internal(
        (ref) => create(ref as GetBankAccountsRef),
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
  AutoDisposeFutureProviderElement<GetBankAccountsResponse> createElement() {
    return _GetBankAccountsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetBankAccountsProvider && other.req == req;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, req.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetBankAccountsRef
    on AutoDisposeFutureProviderRef<GetBankAccountsResponse> {
  /// The parameter `req` of this provider.
  GetBankAccountsRequest get req;
}

class _GetBankAccountsProviderElement
    extends AutoDisposeFutureProviderElement<GetBankAccountsResponse>
    with GetBankAccountsRef {
  _GetBankAccountsProviderElement(super.provider);

  @override
  GetBankAccountsRequest get req => (origin as GetBankAccountsProvider).req;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
