// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_failed_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoginFailedResponse _$LoginFailedResponseFromJson(Map<String, dynamic> json) {
  return _LoginFailedResponse.fromJson(json);
}

/// @nodoc
class _$LoginFailedResponseTearOff {
  const _$LoginFailedResponseTearOff();

  _LoginFailedResponse call({required String title, required String message}) {
    return _LoginFailedResponse(
      title: title,
      message: message,
    );
  }

  LoginFailedResponse fromJson(Map<String, Object?> json) {
    return LoginFailedResponse.fromJson(json);
  }
}

/// @nodoc
const $LoginFailedResponse = _$LoginFailedResponseTearOff();

/// @nodoc
mixin _$LoginFailedResponse {
  String get title => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginFailedResponseCopyWith<LoginFailedResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginFailedResponseCopyWith<$Res> {
  factory $LoginFailedResponseCopyWith(
          LoginFailedResponse value, $Res Function(LoginFailedResponse) then) =
      _$LoginFailedResponseCopyWithImpl<$Res>;
  $Res call({String title, String message});
}

/// @nodoc
class _$LoginFailedResponseCopyWithImpl<$Res>
    implements $LoginFailedResponseCopyWith<$Res> {
  _$LoginFailedResponseCopyWithImpl(this._value, this._then);

  final LoginFailedResponse _value;
  // ignore: unused_field
  final $Res Function(LoginFailedResponse) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$LoginFailedResponseCopyWith<$Res>
    implements $LoginFailedResponseCopyWith<$Res> {
  factory _$LoginFailedResponseCopyWith(_LoginFailedResponse value,
          $Res Function(_LoginFailedResponse) then) =
      __$LoginFailedResponseCopyWithImpl<$Res>;
  @override
  $Res call({String title, String message});
}

/// @nodoc
class __$LoginFailedResponseCopyWithImpl<$Res>
    extends _$LoginFailedResponseCopyWithImpl<$Res>
    implements _$LoginFailedResponseCopyWith<$Res> {
  __$LoginFailedResponseCopyWithImpl(
      _LoginFailedResponse _value, $Res Function(_LoginFailedResponse) _then)
      : super(_value, (v) => _then(v as _LoginFailedResponse));

  @override
  _LoginFailedResponse get _value => super._value as _LoginFailedResponse;

  @override
  $Res call({
    Object? title = freezed,
    Object? message = freezed,
  }) {
    return _then(_LoginFailedResponse(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LoginFailedResponse
    with DiagnosticableTreeMixin
    implements _LoginFailedResponse {
  const _$_LoginFailedResponse({required this.title, required this.message});

  factory _$_LoginFailedResponse.fromJson(Map<String, dynamic> json) =>
      _$$_LoginFailedResponseFromJson(json);

  @override
  final String title;
  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginFailedResponse(title: $title, message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LoginFailedResponse'))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoginFailedResponse &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$LoginFailedResponseCopyWith<_LoginFailedResponse> get copyWith =>
      __$LoginFailedResponseCopyWithImpl<_LoginFailedResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoginFailedResponseToJson(this);
  }
}

abstract class _LoginFailedResponse implements LoginFailedResponse {
  const factory _LoginFailedResponse(
      {required String title,
      required String message}) = _$_LoginFailedResponse;

  factory _LoginFailedResponse.fromJson(Map<String, dynamic> json) =
      _$_LoginFailedResponse.fromJson;

  @override
  String get title;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$LoginFailedResponseCopyWith<_LoginFailedResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
