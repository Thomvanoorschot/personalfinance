// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'grpc_client.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$grpcClientHash() => r'89f85ccfdc5af4c62dfe322a2a85a63db5e2b016';

/// See also [grpcClient].
@ProviderFor(grpcClient)
final grpcClientProvider =
    AutoDisposeProvider<GrpcOrGrpcWebClientChannel>.internal(
  grpcClient,
  name: r'grpcClientProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$grpcClientHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GrpcClientRef = AutoDisposeProviderRef<GrpcOrGrpcWebClientChannel>;
String _$userServiceHash() => r'ffc663d4e9a03940e73ce813f46fe8b3342b6cc3';

/// See also [userService].
@ProviderFor(userService)
final userServiceProvider = AutoDisposeProvider<UserServiceClient>.internal(
  userService,
  name: r'userServiceProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$userServiceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef UserServiceRef = AutoDisposeProviderRef<UserServiceClient>;
String _$bankingServiceHash() => r'29efddce21a1c56e0f6524e9c43dd6ba864d709c';

/// See also [bankingService].
@ProviderFor(bankingService)
final bankingServiceProvider =
    AutoDisposeProvider<BankingServiceClient>.internal(
  bankingService,
  name: r'bankingServiceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$bankingServiceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef BankingServiceRef = AutoDisposeProviderRef<BankingServiceClient>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
