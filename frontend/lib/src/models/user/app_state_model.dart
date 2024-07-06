import 'package:json_annotation/json_annotation.dart';

part 'app_state_model.g.dart';

@JsonSerializable()
class AppStateModel {
  bool? hasUnverifiedUser;

  AppStateModel(this.hasUnverifiedUser);

  factory AppStateModel.fromJson(Map<String, dynamic> json) =>
      _$AppStateModelFromJson(json);
  Map<String, dynamic> toJson() => _$AppStateModelToJson(this);
}

