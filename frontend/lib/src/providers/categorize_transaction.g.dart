// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categorize_transaction.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$categorizeTransactionHash() =>
    r'621a4844709baaacc4b1cc58d3d4458c9821803b';

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

abstract class _$CategorizeTransaction
    extends BuildlessAutoDisposeAsyncNotifier<CategorizeTransactionModel> {
  late final String? transactionId;

  FutureOr<CategorizeTransactionModel> build({
    String? transactionId,
  });
}

/// See also [CategorizeTransaction].
@ProviderFor(CategorizeTransaction)
const categorizeTransactionProvider = CategorizeTransactionFamily();

/// See also [CategorizeTransaction].
class CategorizeTransactionFamily
    extends Family<AsyncValue<CategorizeTransactionModel>> {
  /// See also [CategorizeTransaction].
  const CategorizeTransactionFamily();

  /// See also [CategorizeTransaction].
  CategorizeTransactionProvider call({
    String? transactionId,
  }) {
    return CategorizeTransactionProvider(
      transactionId: transactionId,
    );
  }

  @override
  CategorizeTransactionProvider getProviderOverride(
    covariant CategorizeTransactionProvider provider,
  ) {
    return call(
      transactionId: provider.transactionId,
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
  String? get name => r'categorizeTransactionProvider';
}

/// See also [CategorizeTransaction].
class CategorizeTransactionProvider
    extends AutoDisposeAsyncNotifierProviderImpl<CategorizeTransaction,
        CategorizeTransactionModel> {
  /// See also [CategorizeTransaction].
  CategorizeTransactionProvider({
    String? transactionId,
  }) : this._internal(
          () => CategorizeTransaction()..transactionId = transactionId,
          from: categorizeTransactionProvider,
          name: r'categorizeTransactionProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$categorizeTransactionHash,
          dependencies: CategorizeTransactionFamily._dependencies,
          allTransitiveDependencies:
              CategorizeTransactionFamily._allTransitiveDependencies,
          transactionId: transactionId,
        );

  CategorizeTransactionProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.transactionId,
  }) : super.internal();

  final String? transactionId;

  @override
  FutureOr<CategorizeTransactionModel> runNotifierBuild(
    covariant CategorizeTransaction notifier,
  ) {
    return notifier.build(
      transactionId: transactionId,
    );
  }

  @override
  Override overrideWith(CategorizeTransaction Function() create) {
    return ProviderOverride(
      origin: this,
      override: CategorizeTransactionProvider._internal(
        () => create()..transactionId = transactionId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        transactionId: transactionId,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<CategorizeTransaction,
      CategorizeTransactionModel> createElement() {
    return _CategorizeTransactionProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CategorizeTransactionProvider &&
        other.transactionId == transactionId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, transactionId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin CategorizeTransactionRef
    on AutoDisposeAsyncNotifierProviderRef<CategorizeTransactionModel> {
  /// The parameter `transactionId` of this provider.
  String? get transactionId;
}

class _CategorizeTransactionProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<CategorizeTransaction,
        CategorizeTransactionModel> with CategorizeTransactionRef {
  _CategorizeTransactionProviderElement(super.provider);

  @override
  String? get transactionId =>
      (origin as CategorizeTransactionProvider).transactionId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
