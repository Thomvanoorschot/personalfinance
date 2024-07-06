import 'dart:io';

import 'package:frontend/generated/proto/user.pb.dart';
import 'package:frontend/src/clients/grpc_client.dart';
import 'package:frontend/src/models/user/user_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'user.g.dart';

@riverpod
class User extends _$User {
  @override
  FutureOr<UserModel> build() async {
    return getUser();
  }

  Future<UserModel> getUser() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    return UserModel(
        id: prefs.getString("userId") ?? "",
        email: "",
      );
  }

  Future registerUnverifiedUser() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    // TODO This is temporary
    // await prefs.clear();
    final hasUnverifiedUser = prefs.getBool("hasUnverifiedUser") ?? false;
    if(hasUnverifiedUser) {
      return;
    }
    var uniqueDeviceId = await _uniqueDeviceId();
    var registerUnverifiedUserResp = await ref
        .read(userServiceProvider)
        .registerUnverifiedUser(RegisterUnverifiedUserRequest(uniqueDeviceId: uniqueDeviceId));
    prefs.setBool("hasUnverifiedUser", true);
    prefs.setString("userId", registerUnverifiedUserResp.userId);
  }

  Future<String?> _uniqueDeviceId() async {
    var deviceInfo = DeviceInfoPlugin();
    if (Platform.isIOS) {
      var iosDeviceInfo = await deviceInfo.iosInfo;
      return iosDeviceInfo.identifierForVendor;
    } else if(Platform.isAndroid) {
      var androidDeviceInfo = await deviceInfo.androidInfo;
      return 'tbd';
    }
    return null;
  }
}
