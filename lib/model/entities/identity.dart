import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'identity.freezed.dart';

@freezed
class Identity with _$Identity {
  factory Identity({
    required String username,
    required String password,
  }) = _Identity;
}
