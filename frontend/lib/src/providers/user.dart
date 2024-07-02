import 'package:frontend/generated/proto/user.pb.dart';
import 'package:frontend/src/models/user/user_model.dart';
import 'package:frontend/src/repositories/grpc_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user.g.dart';

@riverpod
class User extends _$User {
  @override
  FutureOr<UserModel> build(String id) async {
    return getUser(id);
  }

  Future<UserModel> getUser(String id) async {
    if (id.isEmpty) {
      return UserModel(
        id: "",
        email: "",
      );
    }
    var resp = await ref
        .read(userServiceProvider)
        .register(RegisterRequest(email: "test@test.com"));

    return UserModel(
      id: "",
      email: "",
    );
  }
}
