import 'package:json_annotation/json_annotation.dart';

part 'responses.g.dart';

@JsonSerializable()
class BaseResponse {
  @JsonKey(name: 'status')
  int? status;
  @JsonKey(name: 'message')
  String? message;

  BaseResponse({
    this.status,
    this.message,
  });

  factory BaseResponse.fromJson(Map<String, dynamic> json) {
    return _$BaseResponseFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$BaseResponseToJson(this);
  }
}

@JsonSerializable()
class UserResponse {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'email')
  String? email;
  @JsonKey(name: 'password')
  String? password;

  UserResponse({
    this.id,
    this.email,
    this.password,
  });

  factory UserResponse.fromJson(Map<String, dynamic> json) {
    return _$UserResponseFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$UserResponseToJson(this);
  }
}

@JsonSerializable()
class AuthResponse extends BaseResponse {
  @JsonKey(name: 'user')
  int? userResponse;

  AuthResponse({this.userResponse});

  factory AuthResponse.fromJson(Map<String, dynamic> json) {
    return _$AuthResponseFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$AuthResponseToJson(this);
  }
}
