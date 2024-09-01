import 'package:frontend/generated/proto/main.pbgrpc.dart';
import 'package:grpc/grpc.dart';
import 'package:grpc/grpc_or_grpcweb.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';


part 'grpc_client.g.dart';

@riverpod
GrpcOrGrpcWebClientChannel grpcClient(GrpcClientRef ref) {
  return GrpcOrGrpcWebClientChannel.grpc('192.168.1.244', port: 8080, options: const ChannelOptions(
      credentials: ChannelCredentials.insecure()));
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

@riverpod
BudgetingServiceClient budgetingService(BudgetingServiceRef ref) =>
    BudgetingServiceClient(ref.watch(grpcClientProvider));
