// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_details.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$transactionDetailsHash() =>
    r'a21968dcbfe757595ba46bde383c04e609598079';

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

abstract class _$TransactionDetails
    extends BuildlessAutoDisposeAsyncNotifier<TransactionResponse> {
  late final String transactionId;

  FutureOr<TransactionResponse> build({
    required String transactionId,
  });
}

/// See also [TransactionDetails].
@ProviderFor(TransactionDetails)
const transactionDetailsProvider = TransactionDetailsFamily();

/// See also [TransactionDetails].
class TransactionDetailsFamily extends Family<AsyncValue<TransactionResponse>> {
  /// See also [TransactionDetails].
  const TransactionDetailsFamily();

  /// See also [TransactionDetails].
  TransactionDetailsProvider call({
    required String transactionId,
  }) {
    return TransactionDetailsProvider(
      transactionId: transactionId,
    );
  }

  @override
  TransactionDetailsProvider getProviderOverride(
    covariant TransactionDetailsProvider provider,
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
  String? get name => r'transactionDetailsProvider';
}

/// See also [TransactionDetails].
class TransactionDetailsProvider extends AutoDisposeAsyncNotifierProviderImpl<
    TransactionDetails, TransactionResponse> {
  /// See also [TransactionDetails].
  TransactionDetailsProvider({
    required String transactionId,
  }) : this._internal(
          () => TransactionDetails()..transactionId = transactionId,
          from: transactionDetailsProvider,
          name: r'transactionDetailsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$transactionDetailsHash,
          dependencies: TransactionDetailsFamily._dependencies,
          allTransitiveDependencies:
              TransactionDetailsFamily._allTransitiveDependencies,
          transactionId: transactionId,
        );

  TransactionDetailsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.transactionId,
  }) : super.internal();

  final String transactionId;

  @override
  FutureOr<TransactionResponse> runNotifierBuild(
    covariant TransactionDetails notifier,
  ) {
    return notifier.build(
      transactionId: transactionId,
    );
  }

  @override
  Override overrideWith(TransactionDetails Function() create) {
    return ProviderOverride(
      origin: this,
      override: TransactionDetailsProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<TransactionDetails,
      TransactionResponse> createElement() {
    return _TransactionDetailsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is TransactionDetailsProvider &&
        other.transactionId == transactionId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, transactionId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin TransactionDetailsRef
    on AutoDisposeAsyncNotifierProviderRef<TransactionResponse> {
  /// The parameter `transactionId` of this provider.
  String get transactionId;
}

class _TransactionDetailsProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<TransactionDetails,
        TransactionResponse> with TransactionDetailsRef {
  _TransactionDetailsProviderElement(super.provider);

  @override
  String get transactionId =>
      (origin as TransactionDetailsProvider).transactionId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
