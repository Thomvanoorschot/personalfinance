// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$userHash() => r'4c071d8895e2db76281f469130cd3f6e8e575ffa';

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

abstract class _$User extends BuildlessAutoDisposeAsyncNotifier<UserModel> {
  late final String id;

  FutureOr<UserModel> build(
    String id,
  );
}

/// See also [User].
@ProviderFor(User)
const userProvider = UserFamily();

/// See also [User].
class UserFamily extends Family<AsyncValue<UserModel>> {
  /// See also [User].
  const UserFamily();

  /// See also [User].
  UserProvider call(
    String id,
  ) {
    return UserProvider(
      id,
    );
  }

  @override
  UserProvider getProviderOverride(
    covariant UserProvider provider,
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
  String? get name => r'userProvider';
}

/// See also [User].
class UserProvider
    extends AutoDisposeAsyncNotifierProviderImpl<User, UserModel> {
  /// See also [User].
  UserProvider(
    String id,
  ) : this._internal(
          () => User()..id = id,
          from: userProvider,
          name: r'userProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product') ? null : _$userHash,
          dependencies: UserFamily._dependencies,
          allTransitiveDependencies: UserFamily._allTransitiveDependencies,
          id: id,
        );

  UserProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final String id;

  @override
  FutureOr<UserModel> runNotifierBuild(
    covariant User notifier,
  ) {
    return notifier.build(
      id,
    );
  }

  @override
  Override overrideWith(User Function() create) {
    return ProviderOverride(
      origin: this,
      override: UserProvider._internal(
        () => create()..id = id,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<User, UserModel> createElement() {
    return _UserProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UserProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin UserRef on AutoDisposeAsyncNotifierProviderRef<UserModel> {
  /// The parameter `id` of this provider.
  String get id;
}

class _UserProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<User, UserModel>
    with UserRef {
  _UserProviderElement(super.provider);

  @override
  String get id => (origin as UserProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
