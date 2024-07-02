import 'package:frontend/generated/proto/main.pbgrpc.dart';
import 'package:grpc/grpc_or_grpcweb.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';


part 'grpc_client.g.dart';

@riverpod
GrpcOrGrpcWebClientChannel grpcClient(GrpcClientRef ref) {
  return GrpcOrGrpcWebClientChannel.grpc('localhost');
}

class GRPCAvailabilityServiceClient {
  GRPCAvailabilityServiceClient({required this.grpcClient});

  final GrpcOrGrpcWebClientChannel grpcClient;
}


@riverpod
UserServiceClient userService(UserServiceRef ref) =>
    UserServiceClient(ref.watch(grpcClientProvider));

@riverpod
BankingServiceClient bankingService(BankingServiceRef ref) =>
    BankingServiceClient(ref.watch(grpcClientProvider));
