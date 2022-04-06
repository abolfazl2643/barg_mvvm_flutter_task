import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'login_failed_response.freezed.dart';
part 'login_failed_response.g.dart';

@freezed
class LoginFailedResponse with _$LoginFailedResponse {
  const factory LoginFailedResponse({
    required String title,
    required String message,
  }) = _LoginFailedResponse;

  factory LoginFailedResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginFailedResponseFromJson(json);
}
