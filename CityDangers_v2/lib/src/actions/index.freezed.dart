// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of actions;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Login {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String email, String password, ActionResponse response) $default, {
    required TResult Function(AppUser user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String email, String password, ActionResponse response)? $default, {
    TResult? Function(AppUser user)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String email, String password, ActionResponse response)? $default, {
    TResult Function(AppUser user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(LoginStart value) $default, {
    required TResult Function(LoginSuccessful value) successful,
    required TResult Function(LoginError value) error,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(LoginStart value)? $default, {
    TResult? Function(LoginSuccessful value)? successful,
    TResult? Function(LoginError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(LoginStart value)? $default, {
    TResult Function(LoginSuccessful value)? successful,
    TResult Function(LoginError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginCopyWith<$Res> {
  factory $LoginCopyWith(Login value, $Res Function(Login) then) = _$LoginCopyWithImpl<$Res, Login>;
}

/// @nodoc
class _$LoginCopyWithImpl<$Res, $Val extends Login> implements $LoginCopyWith<$Res> {
  _$LoginCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;

  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoginStartCopyWith<$Res> {
  factory _$$LoginStartCopyWith(_$LoginStart value, $Res Function(_$LoginStart) then) =
      __$$LoginStartCopyWithImpl<$Res>;

  @useResult
  $Res call({String email, String password, ActionResponse response});
}

/// @nodoc
class __$$LoginStartCopyWithImpl<$Res> extends _$LoginCopyWithImpl<$Res, _$LoginStart>
    implements _$$LoginStartCopyWith<$Res> {
  __$$LoginStartCopyWithImpl(_$LoginStart _value, $Res Function(_$LoginStart) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? response = null,
  }) {
    return _then(_$LoginStart(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      response: null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as ActionResponse,
    ));
  }
}

/// @nodoc

class _$LoginStart implements LoginStart {
  const _$LoginStart({required this.email, required this.password, required this.response});

  @override
  final String email;
  @override
  final String password;
  @override
  final ActionResponse response;

  @override
  String toString() {
    return 'Login(email: $email, password: $password, response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginStart &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) || other.password == password) &&
            (identical(other.response, response) || other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password, response);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginStartCopyWith<_$LoginStart> get copyWith => __$$LoginStartCopyWithImpl<_$LoginStart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String email, String password, ActionResponse response) $default, {
    required TResult Function(AppUser user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default(email, password, response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String email, String password, ActionResponse response)? $default, {
    TResult? Function(AppUser user)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call(email, password, response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String email, String password, ActionResponse response)? $default, {
    TResult Function(AppUser user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(email, password, response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(LoginStart value) $default, {
    required TResult Function(LoginSuccessful value) successful,
    required TResult Function(LoginError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(LoginStart value)? $default, {
    TResult? Function(LoginSuccessful value)? successful,
    TResult? Function(LoginError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(LoginStart value)? $default, {
    TResult Function(LoginSuccessful value)? successful,
    TResult Function(LoginError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class LoginStart implements Login {
  const factory LoginStart(
      {required final String email,
      required final String password,
      required final ActionResponse response}) = _$LoginStart;

  String get email;

  String get password;

  ActionResponse get response;

  @JsonKey(ignore: true)
  _$$LoginStartCopyWith<_$LoginStart> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginSuccessfulCopyWith<$Res> {
  factory _$$LoginSuccessfulCopyWith(_$LoginSuccessful value, $Res Function(_$LoginSuccessful) then) =
      __$$LoginSuccessfulCopyWithImpl<$Res>;

  @useResult
  $Res call({AppUser user});

  $AppUserCopyWith<$Res> get user;
}

/// @nodoc
class __$$LoginSuccessfulCopyWithImpl<$Res> extends _$LoginCopyWithImpl<$Res, _$LoginSuccessful>
    implements _$$LoginSuccessfulCopyWith<$Res> {
  __$$LoginSuccessfulCopyWithImpl(_$LoginSuccessful _value, $Res Function(_$LoginSuccessful) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$LoginSuccessful(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AppUser,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AppUserCopyWith<$Res> get user {
    return $AppUserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$LoginSuccessful implements LoginSuccessful {
  const _$LoginSuccessful(this.user);

  @override
  final AppUser user;

  @override
  String toString() {
    return 'Login.successful(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginSuccessful &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginSuccessfulCopyWith<_$LoginSuccessful> get copyWith =>
      __$$LoginSuccessfulCopyWithImpl<_$LoginSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String email, String password, ActionResponse response) $default, {
    required TResult Function(AppUser user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String email, String password, ActionResponse response)? $default, {
    TResult? Function(AppUser user)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String email, String password, ActionResponse response)? $default, {
    TResult Function(AppUser user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(LoginStart value) $default, {
    required TResult Function(LoginSuccessful value) successful,
    required TResult Function(LoginError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(LoginStart value)? $default, {
    TResult? Function(LoginSuccessful value)? successful,
    TResult? Function(LoginError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(LoginStart value)? $default, {
    TResult Function(LoginSuccessful value)? successful,
    TResult Function(LoginError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class LoginSuccessful implements Login {
  const factory LoginSuccessful(final AppUser user) = _$LoginSuccessful;

  AppUser get user;

  @JsonKey(ignore: true)
  _$$LoginSuccessfulCopyWith<_$LoginSuccessful> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginErrorCopyWith<$Res> {
  factory _$$LoginErrorCopyWith(_$LoginError value, $Res Function(_$LoginError) then) =
      __$$LoginErrorCopyWithImpl<$Res>;

  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$LoginErrorCopyWithImpl<$Res> extends _$LoginCopyWithImpl<$Res, _$LoginError>
    implements _$$LoginErrorCopyWith<$Res> {
  __$$LoginErrorCopyWithImpl(_$LoginError _value, $Res Function(_$LoginError) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$LoginError(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$LoginError implements LoginError {
  const _$LoginError(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'Login.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginError &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) || other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginErrorCopyWith<_$LoginError> get copyWith => __$$LoginErrorCopyWithImpl<_$LoginError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String email, String password, ActionResponse response) $default, {
    required TResult Function(AppUser user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String email, String password, ActionResponse response)? $default, {
    TResult? Function(AppUser user)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String email, String password, ActionResponse response)? $default, {
    TResult Function(AppUser user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(LoginStart value) $default, {
    required TResult Function(LoginSuccessful value) successful,
    required TResult Function(LoginError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(LoginStart value)? $default, {
    TResult? Function(LoginSuccessful value)? successful,
    TResult? Function(LoginError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(LoginStart value)? $default, {
    TResult Function(LoginSuccessful value)? successful,
    TResult Function(LoginError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class LoginError implements Login {
  const factory LoginError(final Object error, final StackTrace stackTrace) = _$LoginError;

  Object get error;

  StackTrace get stackTrace;

  @JsonKey(ignore: true)
  _$$LoginErrorCopyWith<_$LoginError> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Logout {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(LogoutStart value) $default, {
    required TResult Function(LogoutSuccessful value) successful,
    required TResult Function(LogoutError value) error,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(LogoutStart value)? $default, {
    TResult? Function(LogoutSuccessful value)? successful,
    TResult? Function(LogoutError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(LogoutStart value)? $default, {
    TResult Function(LogoutSuccessful value)? successful,
    TResult Function(LogoutError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogoutCopyWith<$Res> {
  factory $LogoutCopyWith(Logout value, $Res Function(Logout) then) = _$LogoutCopyWithImpl<$Res, Logout>;
}

/// @nodoc
class _$LogoutCopyWithImpl<$Res, $Val extends Logout> implements $LogoutCopyWith<$Res> {
  _$LogoutCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;

  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LogoutStartCopyWith<$Res> {
  factory _$$LogoutStartCopyWith(_$LogoutStart value, $Res Function(_$LogoutStart) then) =
      __$$LogoutStartCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogoutStartCopyWithImpl<$Res> extends _$LogoutCopyWithImpl<$Res, _$LogoutStart>
    implements _$$LogoutStartCopyWith<$Res> {
  __$$LogoutStartCopyWithImpl(_$LogoutStart _value, $Res Function(_$LogoutStart) _then) : super(_value, _then);
}

/// @nodoc

class _$LogoutStart implements LogoutStart {
  const _$LogoutStart();

  @override
  String toString() {
    return 'Logout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$LogoutStart);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(LogoutStart value) $default, {
    required TResult Function(LogoutSuccessful value) successful,
    required TResult Function(LogoutError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(LogoutStart value)? $default, {
    TResult? Function(LogoutSuccessful value)? successful,
    TResult? Function(LogoutError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(LogoutStart value)? $default, {
    TResult Function(LogoutSuccessful value)? successful,
    TResult Function(LogoutError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class LogoutStart implements Logout {
  const factory LogoutStart() = _$LogoutStart;
}

/// @nodoc
abstract class _$$LogoutSuccessfulCopyWith<$Res> {
  factory _$$LogoutSuccessfulCopyWith(_$LogoutSuccessful value, $Res Function(_$LogoutSuccessful) then) =
      __$$LogoutSuccessfulCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogoutSuccessfulCopyWithImpl<$Res> extends _$LogoutCopyWithImpl<$Res, _$LogoutSuccessful>
    implements _$$LogoutSuccessfulCopyWith<$Res> {
  __$$LogoutSuccessfulCopyWithImpl(_$LogoutSuccessful _value, $Res Function(_$LogoutSuccessful) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LogoutSuccessful implements LogoutSuccessful {
  const _$LogoutSuccessful();

  @override
  String toString() {
    return 'Logout.successful()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$LogoutSuccessful);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(LogoutStart value) $default, {
    required TResult Function(LogoutSuccessful value) successful,
    required TResult Function(LogoutError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(LogoutStart value)? $default, {
    TResult? Function(LogoutSuccessful value)? successful,
    TResult? Function(LogoutError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(LogoutStart value)? $default, {
    TResult Function(LogoutSuccessful value)? successful,
    TResult Function(LogoutError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class LogoutSuccessful implements Logout {
  const factory LogoutSuccessful() = _$LogoutSuccessful;
}

/// @nodoc
abstract class _$$LogoutErrorCopyWith<$Res> {
  factory _$$LogoutErrorCopyWith(_$LogoutError value, $Res Function(_$LogoutError) then) =
      __$$LogoutErrorCopyWithImpl<$Res>;

  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$LogoutErrorCopyWithImpl<$Res> extends _$LogoutCopyWithImpl<$Res, _$LogoutError>
    implements _$$LogoutErrorCopyWith<$Res> {
  __$$LogoutErrorCopyWithImpl(_$LogoutError _value, $Res Function(_$LogoutError) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$LogoutError(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$LogoutError implements LogoutError {
  const _$LogoutError(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'Logout.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LogoutError &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) || other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LogoutErrorCopyWith<_$LogoutError> get copyWith => __$$LogoutErrorCopyWithImpl<_$LogoutError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(LogoutStart value) $default, {
    required TResult Function(LogoutSuccessful value) successful,
    required TResult Function(LogoutError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(LogoutStart value)? $default, {
    TResult? Function(LogoutSuccessful value)? successful,
    TResult? Function(LogoutError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(LogoutStart value)? $default, {
    TResult Function(LogoutSuccessful value)? successful,
    TResult Function(LogoutError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class LogoutError implements Logout {
  const factory LogoutError(final Object error, final StackTrace stackTrace) = _$LogoutError;

  Object get error;

  StackTrace get stackTrace;

  @JsonKey(ignore: true)
  _$$LogoutErrorCopyWith<_$LogoutError> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CreateUser {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String email, String password, String name, ActionResponse response) $default, {
    required TResult Function(AppUser user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String email, String password, String name, ActionResponse response)? $default, {
    TResult? Function(AppUser user)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String email, String password, String name, ActionResponse response)? $default, {
    TResult Function(AppUser user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CreateUserStart value) $default, {
    required TResult Function(CreateUserSuccessful value) successful,
    required TResult Function(CreateUserError value) error,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(CreateUserStart value)? $default, {
    TResult? Function(CreateUserSuccessful value)? successful,
    TResult? Function(CreateUserError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CreateUserStart value)? $default, {
    TResult Function(CreateUserSuccessful value)? successful,
    TResult Function(CreateUserError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateUserCopyWith<$Res> {
  factory $CreateUserCopyWith(CreateUser value, $Res Function(CreateUser) then) =
      _$CreateUserCopyWithImpl<$Res, CreateUser>;
}

/// @nodoc
class _$CreateUserCopyWithImpl<$Res, $Val extends CreateUser> implements $CreateUserCopyWith<$Res> {
  _$CreateUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;

  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CreateUserStartCopyWith<$Res> {
  factory _$$CreateUserStartCopyWith(_$CreateUserStart value, $Res Function(_$CreateUserStart) then) =
      __$$CreateUserStartCopyWithImpl<$Res>;

  @useResult
  $Res call({String email, String password, String name, ActionResponse response});
}

/// @nodoc
class __$$CreateUserStartCopyWithImpl<$Res> extends _$CreateUserCopyWithImpl<$Res, _$CreateUserStart>
    implements _$$CreateUserStartCopyWith<$Res> {
  __$$CreateUserStartCopyWithImpl(_$CreateUserStart _value, $Res Function(_$CreateUserStart) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? name = null,
    Object? response = null,
  }) {
    return _then(_$CreateUserStart(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      response: null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as ActionResponse,
    ));
  }
}

/// @nodoc

class _$CreateUserStart implements CreateUserStart {
  const _$CreateUserStart({required this.email, required this.password, required this.name, required this.response});

  @override
  final String email;
  @override
  final String password;
  @override
  final String name;
  @override
  final ActionResponse response;

  @override
  String toString() {
    return 'CreateUser(email: $email, password: $password, name: $name, response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateUserStart &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) || other.password == password) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.response, response) || other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password, name, response);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateUserStartCopyWith<_$CreateUserStart> get copyWith =>
      __$$CreateUserStartCopyWithImpl<_$CreateUserStart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String email, String password, String name, ActionResponse response) $default, {
    required TResult Function(AppUser user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default(email, password, name, response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String email, String password, String name, ActionResponse response)? $default, {
    TResult? Function(AppUser user)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call(email, password, name, response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String email, String password, String name, ActionResponse response)? $default, {
    TResult Function(AppUser user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(email, password, name, response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CreateUserStart value) $default, {
    required TResult Function(CreateUserSuccessful value) successful,
    required TResult Function(CreateUserError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(CreateUserStart value)? $default, {
    TResult? Function(CreateUserSuccessful value)? successful,
    TResult? Function(CreateUserError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CreateUserStart value)? $default, {
    TResult Function(CreateUserSuccessful value)? successful,
    TResult Function(CreateUserError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class CreateUserStart implements CreateUser {
  const factory CreateUserStart(
      {required final String email,
      required final String password,
      required final String name,
      required final ActionResponse response}) = _$CreateUserStart;

  String get email;

  String get password;

  String get name;

  ActionResponse get response;

  @JsonKey(ignore: true)
  _$$CreateUserStartCopyWith<_$CreateUserStart> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateUserSuccessfulCopyWith<$Res> {
  factory _$$CreateUserSuccessfulCopyWith(_$CreateUserSuccessful value, $Res Function(_$CreateUserSuccessful) then) =
      __$$CreateUserSuccessfulCopyWithImpl<$Res>;

  @useResult
  $Res call({AppUser user});

  $AppUserCopyWith<$Res> get user;
}

/// @nodoc
class __$$CreateUserSuccessfulCopyWithImpl<$Res> extends _$CreateUserCopyWithImpl<$Res, _$CreateUserSuccessful>
    implements _$$CreateUserSuccessfulCopyWith<$Res> {
  __$$CreateUserSuccessfulCopyWithImpl(_$CreateUserSuccessful _value, $Res Function(_$CreateUserSuccessful) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$CreateUserSuccessful(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AppUser,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AppUserCopyWith<$Res> get user {
    return $AppUserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$CreateUserSuccessful implements CreateUserSuccessful {
  const _$CreateUserSuccessful(this.user);

  @override
  final AppUser user;

  @override
  String toString() {
    return 'CreateUser.successful(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateUserSuccessful &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateUserSuccessfulCopyWith<_$CreateUserSuccessful> get copyWith =>
      __$$CreateUserSuccessfulCopyWithImpl<_$CreateUserSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String email, String password, String name, ActionResponse response) $default, {
    required TResult Function(AppUser user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String email, String password, String name, ActionResponse response)? $default, {
    TResult? Function(AppUser user)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String email, String password, String name, ActionResponse response)? $default, {
    TResult Function(AppUser user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CreateUserStart value) $default, {
    required TResult Function(CreateUserSuccessful value) successful,
    required TResult Function(CreateUserError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(CreateUserStart value)? $default, {
    TResult? Function(CreateUserSuccessful value)? successful,
    TResult? Function(CreateUserError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CreateUserStart value)? $default, {
    TResult Function(CreateUserSuccessful value)? successful,
    TResult Function(CreateUserError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class CreateUserSuccessful implements CreateUser {
  const factory CreateUserSuccessful(final AppUser user) = _$CreateUserSuccessful;

  AppUser get user;

  @JsonKey(ignore: true)
  _$$CreateUserSuccessfulCopyWith<_$CreateUserSuccessful> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateUserErrorCopyWith<$Res> {
  factory _$$CreateUserErrorCopyWith(_$CreateUserError value, $Res Function(_$CreateUserError) then) =
      __$$CreateUserErrorCopyWithImpl<$Res>;

  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$CreateUserErrorCopyWithImpl<$Res> extends _$CreateUserCopyWithImpl<$Res, _$CreateUserError>
    implements _$$CreateUserErrorCopyWith<$Res> {
  __$$CreateUserErrorCopyWithImpl(_$CreateUserError _value, $Res Function(_$CreateUserError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$CreateUserError(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$CreateUserError implements CreateUserError {
  const _$CreateUserError(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'CreateUser.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateUserError &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) || other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateUserErrorCopyWith<_$CreateUserError> get copyWith =>
      __$$CreateUserErrorCopyWithImpl<_$CreateUserError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String email, String password, String name, ActionResponse response) $default, {
    required TResult Function(AppUser user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String email, String password, String name, ActionResponse response)? $default, {
    TResult? Function(AppUser user)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String email, String password, String name, ActionResponse response)? $default, {
    TResult Function(AppUser user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CreateUserStart value) $default, {
    required TResult Function(CreateUserSuccessful value) successful,
    required TResult Function(CreateUserError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(CreateUserStart value)? $default, {
    TResult? Function(CreateUserSuccessful value)? successful,
    TResult? Function(CreateUserError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CreateUserStart value)? $default, {
    TResult Function(CreateUserSuccessful value)? successful,
    TResult Function(CreateUserError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CreateUserError implements CreateUser {
  const factory CreateUserError(final Object error, final StackTrace stackTrace) = _$CreateUserError;

  Object get error;

  StackTrace get stackTrace;

  @JsonKey(ignore: true)
  _$$CreateUserErrorCopyWith<_$CreateUserError> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PostUser {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(dynamic object) $default, {
    required TResult Function() successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(dynamic object)? $default, {
    TResult? Function()? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(dynamic object)? $default, {
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(PostUserStart value) $default, {
    required TResult Function(PostUserSuccessful value) successful,
    required TResult Function(PostUserError value) error,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(PostUserStart value)? $default, {
    TResult? Function(PostUserSuccessful value)? successful,
    TResult? Function(PostUserError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(PostUserStart value)? $default, {
    TResult Function(PostUserSuccessful value)? successful,
    TResult Function(PostUserError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostUserCopyWith<$Res> {
  factory $PostUserCopyWith(PostUser value, $Res Function(PostUser) then) = _$PostUserCopyWithImpl<$Res, PostUser>;
}

/// @nodoc
class _$PostUserCopyWithImpl<$Res, $Val extends PostUser> implements $PostUserCopyWith<$Res> {
  _$PostUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;

  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PostUserStartCopyWith<$Res> {
  factory _$$PostUserStartCopyWith(_$PostUserStart value, $Res Function(_$PostUserStart) then) =
      __$$PostUserStartCopyWithImpl<$Res>;

  @useResult
  $Res call({dynamic object});
}

/// @nodoc
class __$$PostUserStartCopyWithImpl<$Res> extends _$PostUserCopyWithImpl<$Res, _$PostUserStart>
    implements _$$PostUserStartCopyWith<$Res> {
  __$$PostUserStartCopyWithImpl(_$PostUserStart _value, $Res Function(_$PostUserStart) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? object = freezed,
  }) {
    return _then(_$PostUserStart(
      object: freezed == object
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$PostUserStart implements PostUserStart {
  const _$PostUserStart({required this.object});

  @override
  final dynamic object;

  @override
  String toString() {
    return 'PostUser(object: $object)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostUserStart &&
            const DeepCollectionEquality().equals(other.object, object));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(object));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostUserStartCopyWith<_$PostUserStart> get copyWith =>
      __$$PostUserStartCopyWithImpl<_$PostUserStart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(dynamic object) $default, {
    required TResult Function() successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default(object);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(dynamic object)? $default, {
    TResult? Function()? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call(object);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(dynamic object)? $default, {
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(object);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(PostUserStart value) $default, {
    required TResult Function(PostUserSuccessful value) successful,
    required TResult Function(PostUserError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(PostUserStart value)? $default, {
    TResult? Function(PostUserSuccessful value)? successful,
    TResult? Function(PostUserError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(PostUserStart value)? $default, {
    TResult Function(PostUserSuccessful value)? successful,
    TResult Function(PostUserError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class PostUserStart implements PostUser {
  const factory PostUserStart({required final dynamic object}) = _$PostUserStart;

  dynamic get object;

  @JsonKey(ignore: true)
  _$$PostUserStartCopyWith<_$PostUserStart> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PostUserSuccessfulCopyWith<$Res> {
  factory _$$PostUserSuccessfulCopyWith(_$PostUserSuccessful value, $Res Function(_$PostUserSuccessful) then) =
      __$$PostUserSuccessfulCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PostUserSuccessfulCopyWithImpl<$Res> extends _$PostUserCopyWithImpl<$Res, _$PostUserSuccessful>
    implements _$$PostUserSuccessfulCopyWith<$Res> {
  __$$PostUserSuccessfulCopyWithImpl(_$PostUserSuccessful _value, $Res Function(_$PostUserSuccessful) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PostUserSuccessful implements PostUserSuccessful {
  const _$PostUserSuccessful();

  @override
  String toString() {
    return 'PostUser.successful()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$PostUserSuccessful);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(dynamic object) $default, {
    required TResult Function() successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(dynamic object)? $default, {
    TResult? Function()? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(dynamic object)? $default, {
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(PostUserStart value) $default, {
    required TResult Function(PostUserSuccessful value) successful,
    required TResult Function(PostUserError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(PostUserStart value)? $default, {
    TResult? Function(PostUserSuccessful value)? successful,
    TResult? Function(PostUserError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(PostUserStart value)? $default, {
    TResult Function(PostUserSuccessful value)? successful,
    TResult Function(PostUserError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class PostUserSuccessful implements PostUser {
  const factory PostUserSuccessful() = _$PostUserSuccessful;
}

/// @nodoc
abstract class _$$PostUserErrorCopyWith<$Res> {
  factory _$$PostUserErrorCopyWith(_$PostUserError value, $Res Function(_$PostUserError) then) =
      __$$PostUserErrorCopyWithImpl<$Res>;

  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$PostUserErrorCopyWithImpl<$Res> extends _$PostUserCopyWithImpl<$Res, _$PostUserError>
    implements _$$PostUserErrorCopyWith<$Res> {
  __$$PostUserErrorCopyWithImpl(_$PostUserError _value, $Res Function(_$PostUserError) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$PostUserError(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$PostUserError implements PostUserError {
  const _$PostUserError(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'PostUser.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostUserError &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) || other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostUserErrorCopyWith<_$PostUserError> get copyWith =>
      __$$PostUserErrorCopyWithImpl<_$PostUserError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(dynamic object) $default, {
    required TResult Function() successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(dynamic object)? $default, {
    TResult? Function()? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(dynamic object)? $default, {
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(PostUserStart value) $default, {
    required TResult Function(PostUserSuccessful value) successful,
    required TResult Function(PostUserError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(PostUserStart value)? $default, {
    TResult? Function(PostUserSuccessful value)? successful,
    TResult? Function(PostUserError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(PostUserStart value)? $default, {
    TResult Function(PostUserSuccessful value)? successful,
    TResult Function(PostUserError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class PostUserError implements PostUser {
  const factory PostUserError(final Object error, final StackTrace stackTrace) = _$PostUserError;

  Object get error;

  StackTrace get stackTrace;

  @JsonKey(ignore: true)
  _$$PostUserErrorCopyWith<_$PostUserError> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PostDanger {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(dynamic danger) $default, {
    required TResult Function() successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(dynamic danger)? $default, {
    TResult? Function()? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(dynamic danger)? $default, {
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(PostDangerStart value) $default, {
    required TResult Function(PostDangerSuccessful value) successful,
    required TResult Function(PostDangerError value) error,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(PostDangerStart value)? $default, {
    TResult? Function(PostDangerSuccessful value)? successful,
    TResult? Function(PostDangerError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(PostDangerStart value)? $default, {
    TResult Function(PostDangerSuccessful value)? successful,
    TResult Function(PostDangerError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostDangerCopyWith<$Res> {
  factory $PostDangerCopyWith(PostDanger value, $Res Function(PostDanger) then) =
      _$PostDangerCopyWithImpl<$Res, PostDanger>;
}

/// @nodoc
class _$PostDangerCopyWithImpl<$Res, $Val extends PostDanger> implements $PostDangerCopyWith<$Res> {
  _$PostDangerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;

  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PostDangerStartCopyWith<$Res> {
  factory _$$PostDangerStartCopyWith(_$PostDangerStart value, $Res Function(_$PostDangerStart) then) =
      __$$PostDangerStartCopyWithImpl<$Res>;

  @useResult
  $Res call({dynamic danger});
}

/// @nodoc
class __$$PostDangerStartCopyWithImpl<$Res> extends _$PostDangerCopyWithImpl<$Res, _$PostDangerStart>
    implements _$$PostDangerStartCopyWith<$Res> {
  __$$PostDangerStartCopyWithImpl(_$PostDangerStart _value, $Res Function(_$PostDangerStart) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? danger = freezed,
  }) {
    return _then(_$PostDangerStart(
      freezed == danger
          ? _value.danger
          : danger // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$PostDangerStart implements PostDangerStart {
  const _$PostDangerStart(this.danger);

  @override
  final dynamic danger;

  @override
  String toString() {
    return 'PostDanger(danger: $danger)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostDangerStart &&
            const DeepCollectionEquality().equals(other.danger, danger));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(danger));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostDangerStartCopyWith<_$PostDangerStart> get copyWith =>
      __$$PostDangerStartCopyWithImpl<_$PostDangerStart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(dynamic danger) $default, {
    required TResult Function() successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default(danger);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(dynamic danger)? $default, {
    TResult? Function()? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call(danger);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(dynamic danger)? $default, {
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(danger);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(PostDangerStart value) $default, {
    required TResult Function(PostDangerSuccessful value) successful,
    required TResult Function(PostDangerError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(PostDangerStart value)? $default, {
    TResult? Function(PostDangerSuccessful value)? successful,
    TResult? Function(PostDangerError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(PostDangerStart value)? $default, {
    TResult Function(PostDangerSuccessful value)? successful,
    TResult Function(PostDangerError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class PostDangerStart implements PostDanger {
  const factory PostDangerStart(final dynamic danger) = _$PostDangerStart;

  dynamic get danger;

  @JsonKey(ignore: true)
  _$$PostDangerStartCopyWith<_$PostDangerStart> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PostDangerSuccessfulCopyWith<$Res> {
  factory _$$PostDangerSuccessfulCopyWith(_$PostDangerSuccessful value, $Res Function(_$PostDangerSuccessful) then) =
      __$$PostDangerSuccessfulCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PostDangerSuccessfulCopyWithImpl<$Res> extends _$PostDangerCopyWithImpl<$Res, _$PostDangerSuccessful>
    implements _$$PostDangerSuccessfulCopyWith<$Res> {
  __$$PostDangerSuccessfulCopyWithImpl(_$PostDangerSuccessful _value, $Res Function(_$PostDangerSuccessful) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PostDangerSuccessful implements PostDangerSuccessful {
  const _$PostDangerSuccessful();

  @override
  String toString() {
    return 'PostDanger.successful()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$PostDangerSuccessful);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(dynamic danger) $default, {
    required TResult Function() successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(dynamic danger)? $default, {
    TResult? Function()? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(dynamic danger)? $default, {
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(PostDangerStart value) $default, {
    required TResult Function(PostDangerSuccessful value) successful,
    required TResult Function(PostDangerError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(PostDangerStart value)? $default, {
    TResult? Function(PostDangerSuccessful value)? successful,
    TResult? Function(PostDangerError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(PostDangerStart value)? $default, {
    TResult Function(PostDangerSuccessful value)? successful,
    TResult Function(PostDangerError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class PostDangerSuccessful implements PostDanger {
  const factory PostDangerSuccessful() = _$PostDangerSuccessful;
}

/// @nodoc
abstract class _$$PostDangerErrorCopyWith<$Res> {
  factory _$$PostDangerErrorCopyWith(_$PostDangerError value, $Res Function(_$PostDangerError) then) =
      __$$PostDangerErrorCopyWithImpl<$Res>;

  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$PostDangerErrorCopyWithImpl<$Res> extends _$PostDangerCopyWithImpl<$Res, _$PostDangerError>
    implements _$$PostDangerErrorCopyWith<$Res> {
  __$$PostDangerErrorCopyWithImpl(_$PostDangerError _value, $Res Function(_$PostDangerError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$PostDangerError(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$PostDangerError implements PostDangerError {
  const _$PostDangerError(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'PostDanger.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostDangerError &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) || other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostDangerErrorCopyWith<_$PostDangerError> get copyWith =>
      __$$PostDangerErrorCopyWithImpl<_$PostDangerError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(dynamic danger) $default, {
    required TResult Function() successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(dynamic danger)? $default, {
    TResult? Function()? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(dynamic danger)? $default, {
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(PostDangerStart value) $default, {
    required TResult Function(PostDangerSuccessful value) successful,
    required TResult Function(PostDangerError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(PostDangerStart value)? $default, {
    TResult? Function(PostDangerSuccessful value)? successful,
    TResult? Function(PostDangerError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(PostDangerStart value)? $default, {
    TResult Function(PostDangerSuccessful value)? successful,
    TResult Function(PostDangerError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class PostDangerError implements PostDanger {
  const factory PostDangerError(final Object error, final StackTrace stackTrace) = _$PostDangerError;

  Object get error;

  StackTrace get stackTrace;

  @JsonKey(ignore: true)
  _$$PostDangerErrorCopyWith<_$PostDangerError> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GetUserDangers {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String uid, ActionResponse response) $default, {
    required TResult Function(List<Danger> dangers) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String uid, ActionResponse response)? $default, {
    TResult? Function(List<Danger> dangers)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String uid, ActionResponse response)? $default, {
    TResult Function(List<Danger> dangers)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetUserDangersStart value) $default, {
    required TResult Function(GetUserDangersSuccessful value) successful,
    required TResult Function(GetUserDangersError value) error,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetUserDangersStart value)? $default, {
    TResult? Function(GetUserDangersSuccessful value)? successful,
    TResult? Function(GetUserDangersError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetUserDangersStart value)? $default, {
    TResult Function(GetUserDangersSuccessful value)? successful,
    TResult Function(GetUserDangersError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetUserDangersCopyWith<$Res> {
  factory $GetUserDangersCopyWith(GetUserDangers value, $Res Function(GetUserDangers) then) =
      _$GetUserDangersCopyWithImpl<$Res, GetUserDangers>;
}

/// @nodoc
class _$GetUserDangersCopyWithImpl<$Res, $Val extends GetUserDangers> implements $GetUserDangersCopyWith<$Res> {
  _$GetUserDangersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;

  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetUserDangersStartCopyWith<$Res> {
  factory _$$GetUserDangersStartCopyWith(_$GetUserDangersStart value, $Res Function(_$GetUserDangersStart) then) =
      __$$GetUserDangersStartCopyWithImpl<$Res>;

  @useResult
  $Res call({String uid, ActionResponse response});
}

/// @nodoc
class __$$GetUserDangersStartCopyWithImpl<$Res> extends _$GetUserDangersCopyWithImpl<$Res, _$GetUserDangersStart>
    implements _$$GetUserDangersStartCopyWith<$Res> {
  __$$GetUserDangersStartCopyWithImpl(_$GetUserDangersStart _value, $Res Function(_$GetUserDangersStart) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? response = null,
  }) {
    return _then(_$GetUserDangersStart(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      response: null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as ActionResponse,
    ));
  }
}

/// @nodoc

class _$GetUserDangersStart implements GetUserDangersStart {
  const _$GetUserDangersStart({required this.uid, required this.response});

  @override
  final String uid;
  @override
  final ActionResponse response;

  @override
  String toString() {
    return 'GetUserDangers(uid: $uid, response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUserDangersStart &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.response, response) || other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uid, response);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetUserDangersStartCopyWith<_$GetUserDangersStart> get copyWith =>
      __$$GetUserDangersStartCopyWithImpl<_$GetUserDangersStart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String uid, ActionResponse response) $default, {
    required TResult Function(List<Danger> dangers) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default(uid, response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String uid, ActionResponse response)? $default, {
    TResult? Function(List<Danger> dangers)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call(uid, response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String uid, ActionResponse response)? $default, {
    TResult Function(List<Danger> dangers)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(uid, response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetUserDangersStart value) $default, {
    required TResult Function(GetUserDangersSuccessful value) successful,
    required TResult Function(GetUserDangersError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetUserDangersStart value)? $default, {
    TResult? Function(GetUserDangersSuccessful value)? successful,
    TResult? Function(GetUserDangersError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetUserDangersStart value)? $default, {
    TResult Function(GetUserDangersSuccessful value)? successful,
    TResult Function(GetUserDangersError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class GetUserDangersStart implements GetUserDangers {
  const factory GetUserDangersStart({required final String uid, required final ActionResponse response}) =
      _$GetUserDangersStart;

  String get uid;

  ActionResponse get response;

  @JsonKey(ignore: true)
  _$$GetUserDangersStartCopyWith<_$GetUserDangersStart> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetUserDangersSuccessfulCopyWith<$Res> {
  factory _$$GetUserDangersSuccessfulCopyWith(
          _$GetUserDangersSuccessful value, $Res Function(_$GetUserDangersSuccessful) then) =
      __$$GetUserDangersSuccessfulCopyWithImpl<$Res>;

  @useResult
  $Res call({List<Danger> dangers});
}

/// @nodoc
class __$$GetUserDangersSuccessfulCopyWithImpl<$Res>
    extends _$GetUserDangersCopyWithImpl<$Res, _$GetUserDangersSuccessful>
    implements _$$GetUserDangersSuccessfulCopyWith<$Res> {
  __$$GetUserDangersSuccessfulCopyWithImpl(
      _$GetUserDangersSuccessful _value, $Res Function(_$GetUserDangersSuccessful) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dangers = null,
  }) {
    return _then(_$GetUserDangersSuccessful(
      null == dangers
          ? _value._dangers
          : dangers // ignore: cast_nullable_to_non_nullable
              as List<Danger>,
    ));
  }
}

/// @nodoc

class _$GetUserDangersSuccessful implements GetUserDangersSuccessful {
  const _$GetUserDangersSuccessful(final List<Danger> dangers) : _dangers = dangers;

  final List<Danger> _dangers;

  @override
  List<Danger> get dangers {
    if (_dangers is EqualUnmodifiableListView) return _dangers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dangers);
  }

  @override
  String toString() {
    return 'GetUserDangers.successful(dangers: $dangers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUserDangersSuccessful &&
            const DeepCollectionEquality().equals(other._dangers, _dangers));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(_dangers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetUserDangersSuccessfulCopyWith<_$GetUserDangersSuccessful> get copyWith =>
      __$$GetUserDangersSuccessfulCopyWithImpl<_$GetUserDangersSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String uid, ActionResponse response) $default, {
    required TResult Function(List<Danger> dangers) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(dangers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String uid, ActionResponse response)? $default, {
    TResult? Function(List<Danger> dangers)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call(dangers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String uid, ActionResponse response)? $default, {
    TResult Function(List<Danger> dangers)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(dangers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetUserDangersStart value) $default, {
    required TResult Function(GetUserDangersSuccessful value) successful,
    required TResult Function(GetUserDangersError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetUserDangersStart value)? $default, {
    TResult? Function(GetUserDangersSuccessful value)? successful,
    TResult? Function(GetUserDangersError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetUserDangersStart value)? $default, {
    TResult Function(GetUserDangersSuccessful value)? successful,
    TResult Function(GetUserDangersError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GetUserDangersSuccessful implements GetUserDangers {
  const factory GetUserDangersSuccessful(final List<Danger> dangers) = _$GetUserDangersSuccessful;

  List<Danger> get dangers;

  @JsonKey(ignore: true)
  _$$GetUserDangersSuccessfulCopyWith<_$GetUserDangersSuccessful> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetUserDangersErrorCopyWith<$Res> {
  factory _$$GetUserDangersErrorCopyWith(_$GetUserDangersError value, $Res Function(_$GetUserDangersError) then) =
      __$$GetUserDangersErrorCopyWithImpl<$Res>;

  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$GetUserDangersErrorCopyWithImpl<$Res> extends _$GetUserDangersCopyWithImpl<$Res, _$GetUserDangersError>
    implements _$$GetUserDangersErrorCopyWith<$Res> {
  __$$GetUserDangersErrorCopyWithImpl(_$GetUserDangersError _value, $Res Function(_$GetUserDangersError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$GetUserDangersError(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$GetUserDangersError implements GetUserDangersError {
  const _$GetUserDangersError(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'GetUserDangers.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUserDangersError &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) || other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetUserDangersErrorCopyWith<_$GetUserDangersError> get copyWith =>
      __$$GetUserDangersErrorCopyWithImpl<_$GetUserDangersError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String uid, ActionResponse response) $default, {
    required TResult Function(List<Danger> dangers) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String uid, ActionResponse response)? $default, {
    TResult? Function(List<Danger> dangers)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String uid, ActionResponse response)? $default, {
    TResult Function(List<Danger> dangers)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetUserDangersStart value) $default, {
    required TResult Function(GetUserDangersSuccessful value) successful,
    required TResult Function(GetUserDangersError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetUserDangersStart value)? $default, {
    TResult? Function(GetUserDangersSuccessful value)? successful,
    TResult? Function(GetUserDangersError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetUserDangersStart value)? $default, {
    TResult Function(GetUserDangersSuccessful value)? successful,
    TResult Function(GetUserDangersError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetUserDangersError implements GetUserDangers {
  const factory GetUserDangersError(final Object error, final StackTrace stackTrace) = _$GetUserDangersError;

  Object get error;

  StackTrace get stackTrace;

  @JsonKey(ignore: true)
  _$$GetUserDangersErrorCopyWith<_$GetUserDangersError> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$InitializeUser {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(AppUser? user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(AppUser? user)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(AppUser? user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(InitializeUserStart value) $default, {
    required TResult Function(InitializeUserSuccessful value) successful,
    required TResult Function(InitializeUserError value) error,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(InitializeUserStart value)? $default, {
    TResult? Function(InitializeUserSuccessful value)? successful,
    TResult? Function(InitializeUserError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(InitializeUserStart value)? $default, {
    TResult Function(InitializeUserSuccessful value)? successful,
    TResult Function(InitializeUserError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InitializeUserCopyWith<$Res> {
  factory $InitializeUserCopyWith(InitializeUser value, $Res Function(InitializeUser) then) =
      _$InitializeUserCopyWithImpl<$Res, InitializeUser>;
}

/// @nodoc
class _$InitializeUserCopyWithImpl<$Res, $Val extends InitializeUser> implements $InitializeUserCopyWith<$Res> {
  _$InitializeUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;

  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitializeUserStartCopyWith<$Res> {
  factory _$$InitializeUserStartCopyWith(_$InitializeUserStart value, $Res Function(_$InitializeUserStart) then) =
      __$$InitializeUserStartCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitializeUserStartCopyWithImpl<$Res> extends _$InitializeUserCopyWithImpl<$Res, _$InitializeUserStart>
    implements _$$InitializeUserStartCopyWith<$Res> {
  __$$InitializeUserStartCopyWithImpl(_$InitializeUserStart _value, $Res Function(_$InitializeUserStart) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitializeUserStart implements InitializeUserStart {
  const _$InitializeUserStart();

  @override
  String toString() {
    return 'InitializeUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$InitializeUserStart);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(AppUser? user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(AppUser? user)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(AppUser? user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(InitializeUserStart value) $default, {
    required TResult Function(InitializeUserSuccessful value) successful,
    required TResult Function(InitializeUserError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(InitializeUserStart value)? $default, {
    TResult? Function(InitializeUserSuccessful value)? successful,
    TResult? Function(InitializeUserError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(InitializeUserStart value)? $default, {
    TResult Function(InitializeUserSuccessful value)? successful,
    TResult Function(InitializeUserError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class InitializeUserStart implements InitializeUser {
  const factory InitializeUserStart() = _$InitializeUserStart;
}

/// @nodoc
abstract class _$$InitializeUserSuccessfulCopyWith<$Res> {
  factory _$$InitializeUserSuccessfulCopyWith(
          _$InitializeUserSuccessful value, $Res Function(_$InitializeUserSuccessful) then) =
      __$$InitializeUserSuccessfulCopyWithImpl<$Res>;

  @useResult
  $Res call({AppUser? user});

  $AppUserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$InitializeUserSuccessfulCopyWithImpl<$Res>
    extends _$InitializeUserCopyWithImpl<$Res, _$InitializeUserSuccessful>
    implements _$$InitializeUserSuccessfulCopyWith<$Res> {
  __$$InitializeUserSuccessfulCopyWithImpl(
      _$InitializeUserSuccessful _value, $Res Function(_$InitializeUserSuccessful) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$InitializeUserSuccessful(
      freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AppUser?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AppUserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $AppUserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$InitializeUserSuccessful implements InitializeUserSuccessful {
  const _$InitializeUserSuccessful(this.user);

  @override
  final AppUser? user;

  @override
  String toString() {
    return 'InitializeUser.successful(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitializeUserSuccessful &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitializeUserSuccessfulCopyWith<_$InitializeUserSuccessful> get copyWith =>
      __$$InitializeUserSuccessfulCopyWithImpl<_$InitializeUserSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(AppUser? user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(AppUser? user)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(AppUser? user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(InitializeUserStart value) $default, {
    required TResult Function(InitializeUserSuccessful value) successful,
    required TResult Function(InitializeUserError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(InitializeUserStart value)? $default, {
    TResult? Function(InitializeUserSuccessful value)? successful,
    TResult? Function(InitializeUserError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(InitializeUserStart value)? $default, {
    TResult Function(InitializeUserSuccessful value)? successful,
    TResult Function(InitializeUserError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class InitializeUserSuccessful implements InitializeUser {
  const factory InitializeUserSuccessful(final AppUser? user) = _$InitializeUserSuccessful;

  AppUser? get user;

  @JsonKey(ignore: true)
  _$$InitializeUserSuccessfulCopyWith<_$InitializeUserSuccessful> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InitializeUserErrorCopyWith<$Res> {
  factory _$$InitializeUserErrorCopyWith(_$InitializeUserError value, $Res Function(_$InitializeUserError) then) =
      __$$InitializeUserErrorCopyWithImpl<$Res>;

  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$InitializeUserErrorCopyWithImpl<$Res> extends _$InitializeUserCopyWithImpl<$Res, _$InitializeUserError>
    implements _$$InitializeUserErrorCopyWith<$Res> {
  __$$InitializeUserErrorCopyWithImpl(_$InitializeUserError _value, $Res Function(_$InitializeUserError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$InitializeUserError(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$InitializeUserError implements InitializeUserError {
  const _$InitializeUserError(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'InitializeUser.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitializeUserError &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) || other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitializeUserErrorCopyWith<_$InitializeUserError> get copyWith =>
      __$$InitializeUserErrorCopyWithImpl<_$InitializeUserError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(AppUser? user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(AppUser? user)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(AppUser? user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(InitializeUserStart value) $default, {
    required TResult Function(InitializeUserSuccessful value) successful,
    required TResult Function(InitializeUserError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(InitializeUserStart value)? $default, {
    TResult? Function(InitializeUserSuccessful value)? successful,
    TResult? Function(InitializeUserError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(InitializeUserStart value)? $default, {
    TResult Function(InitializeUserSuccessful value)? successful,
    TResult Function(InitializeUserError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class InitializeUserError implements InitializeUser {
  const factory InitializeUserError(final Object error, final StackTrace stackTrace) = _$InitializeUserError;

  Object get error;

  StackTrace get stackTrace;

  @JsonKey(ignore: true)
  _$$InitializeUserErrorCopyWith<_$InitializeUserError> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$InitializeMarkers {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(ActionResponse response) $default, {
    required TResult Function(List<Danger> dangers) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(ActionResponse response)? $default, {
    TResult? Function(List<Danger> dangers)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(ActionResponse response)? $default, {
    TResult Function(List<Danger> dangers)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(InitializeMarkersStart value) $default, {
    required TResult Function(InitializeMarkersSuccessful value) successful,
    required TResult Function(InitializeMarkersError value) error,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(InitializeMarkersStart value)? $default, {
    TResult? Function(InitializeMarkersSuccessful value)? successful,
    TResult? Function(InitializeMarkersError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(InitializeMarkersStart value)? $default, {
    TResult Function(InitializeMarkersSuccessful value)? successful,
    TResult Function(InitializeMarkersError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InitializeMarkersCopyWith<$Res> {
  factory $InitializeMarkersCopyWith(InitializeMarkers value, $Res Function(InitializeMarkers) then) =
      _$InitializeMarkersCopyWithImpl<$Res, InitializeMarkers>;
}

/// @nodoc
class _$InitializeMarkersCopyWithImpl<$Res, $Val extends InitializeMarkers>
    implements $InitializeMarkersCopyWith<$Res> {
  _$InitializeMarkersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;

  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitializeMarkersStartCopyWith<$Res> {
  factory _$$InitializeMarkersStartCopyWith(
          _$InitializeMarkersStart value, $Res Function(_$InitializeMarkersStart) then) =
      __$$InitializeMarkersStartCopyWithImpl<$Res>;

  @useResult
  $Res call({ActionResponse response});
}

/// @nodoc
class __$$InitializeMarkersStartCopyWithImpl<$Res>
    extends _$InitializeMarkersCopyWithImpl<$Res, _$InitializeMarkersStart>
    implements _$$InitializeMarkersStartCopyWith<$Res> {
  __$$InitializeMarkersStartCopyWithImpl(_$InitializeMarkersStart _value, $Res Function(_$InitializeMarkersStart) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_$InitializeMarkersStart(
      response: null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as ActionResponse,
    ));
  }
}

/// @nodoc

class _$InitializeMarkersStart implements InitializeMarkersStart {
  const _$InitializeMarkersStart({required this.response});

  @override
  final ActionResponse response;

  @override
  String toString() {
    return 'InitializeMarkers(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitializeMarkersStart &&
            (identical(other.response, response) || other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitializeMarkersStartCopyWith<_$InitializeMarkersStart> get copyWith =>
      __$$InitializeMarkersStartCopyWithImpl<_$InitializeMarkersStart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(ActionResponse response) $default, {
    required TResult Function(List<Danger> dangers) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(ActionResponse response)? $default, {
    TResult? Function(List<Danger> dangers)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(ActionResponse response)? $default, {
    TResult Function(List<Danger> dangers)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(InitializeMarkersStart value) $default, {
    required TResult Function(InitializeMarkersSuccessful value) successful,
    required TResult Function(InitializeMarkersError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(InitializeMarkersStart value)? $default, {
    TResult? Function(InitializeMarkersSuccessful value)? successful,
    TResult? Function(InitializeMarkersError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(InitializeMarkersStart value)? $default, {
    TResult Function(InitializeMarkersSuccessful value)? successful,
    TResult Function(InitializeMarkersError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class InitializeMarkersStart implements InitializeMarkers {
  const factory InitializeMarkersStart({required final ActionResponse response}) = _$InitializeMarkersStart;

  ActionResponse get response;

  @JsonKey(ignore: true)
  _$$InitializeMarkersStartCopyWith<_$InitializeMarkersStart> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InitializeMarkersSuccessfulCopyWith<$Res> {
  factory _$$InitializeMarkersSuccessfulCopyWith(
          _$InitializeMarkersSuccessful value, $Res Function(_$InitializeMarkersSuccessful) then) =
      __$$InitializeMarkersSuccessfulCopyWithImpl<$Res>;

  @useResult
  $Res call({List<Danger> dangers});
}

/// @nodoc
class __$$InitializeMarkersSuccessfulCopyWithImpl<$Res>
    extends _$InitializeMarkersCopyWithImpl<$Res, _$InitializeMarkersSuccessful>
    implements _$$InitializeMarkersSuccessfulCopyWith<$Res> {
  __$$InitializeMarkersSuccessfulCopyWithImpl(
      _$InitializeMarkersSuccessful _value, $Res Function(_$InitializeMarkersSuccessful) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dangers = null,
  }) {
    return _then(_$InitializeMarkersSuccessful(
      null == dangers
          ? _value._dangers
          : dangers // ignore: cast_nullable_to_non_nullable
              as List<Danger>,
    ));
  }
}

/// @nodoc

class _$InitializeMarkersSuccessful implements InitializeMarkersSuccessful {
  const _$InitializeMarkersSuccessful(final List<Danger> dangers) : _dangers = dangers;

  final List<Danger> _dangers;

  @override
  List<Danger> get dangers {
    if (_dangers is EqualUnmodifiableListView) return _dangers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dangers);
  }

  @override
  String toString() {
    return 'InitializeMarkers.successful(dangers: $dangers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitializeMarkersSuccessful &&
            const DeepCollectionEquality().equals(other._dangers, _dangers));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(_dangers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitializeMarkersSuccessfulCopyWith<_$InitializeMarkersSuccessful> get copyWith =>
      __$$InitializeMarkersSuccessfulCopyWithImpl<_$InitializeMarkersSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(ActionResponse response) $default, {
    required TResult Function(List<Danger> dangers) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(dangers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(ActionResponse response)? $default, {
    TResult? Function(List<Danger> dangers)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call(dangers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(ActionResponse response)? $default, {
    TResult Function(List<Danger> dangers)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(dangers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(InitializeMarkersStart value) $default, {
    required TResult Function(InitializeMarkersSuccessful value) successful,
    required TResult Function(InitializeMarkersError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(InitializeMarkersStart value)? $default, {
    TResult? Function(InitializeMarkersSuccessful value)? successful,
    TResult? Function(InitializeMarkersError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(InitializeMarkersStart value)? $default, {
    TResult Function(InitializeMarkersSuccessful value)? successful,
    TResult Function(InitializeMarkersError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class InitializeMarkersSuccessful implements InitializeMarkers {
  const factory InitializeMarkersSuccessful(final List<Danger> dangers) = _$InitializeMarkersSuccessful;

  List<Danger> get dangers;

  @JsonKey(ignore: true)
  _$$InitializeMarkersSuccessfulCopyWith<_$InitializeMarkersSuccessful> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InitializeMarkersErrorCopyWith<$Res> {
  factory _$$InitializeMarkersErrorCopyWith(
          _$InitializeMarkersError value, $Res Function(_$InitializeMarkersError) then) =
      __$$InitializeMarkersErrorCopyWithImpl<$Res>;

  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$InitializeMarkersErrorCopyWithImpl<$Res>
    extends _$InitializeMarkersCopyWithImpl<$Res, _$InitializeMarkersError>
    implements _$$InitializeMarkersErrorCopyWith<$Res> {
  __$$InitializeMarkersErrorCopyWithImpl(_$InitializeMarkersError _value, $Res Function(_$InitializeMarkersError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$InitializeMarkersError(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$InitializeMarkersError implements InitializeMarkersError {
  const _$InitializeMarkersError(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'InitializeMarkers.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitializeMarkersError &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) || other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitializeMarkersErrorCopyWith<_$InitializeMarkersError> get copyWith =>
      __$$InitializeMarkersErrorCopyWithImpl<_$InitializeMarkersError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(ActionResponse response) $default, {
    required TResult Function(List<Danger> dangers) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(ActionResponse response)? $default, {
    TResult? Function(List<Danger> dangers)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(ActionResponse response)? $default, {
    TResult Function(List<Danger> dangers)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(InitializeMarkersStart value) $default, {
    required TResult Function(InitializeMarkersSuccessful value) successful,
    required TResult Function(InitializeMarkersError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(InitializeMarkersStart value)? $default, {
    TResult? Function(InitializeMarkersSuccessful value)? successful,
    TResult? Function(InitializeMarkersError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(InitializeMarkersStart value)? $default, {
    TResult Function(InitializeMarkersSuccessful value)? successful,
    TResult Function(InitializeMarkersError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class InitializeMarkersError implements InitializeMarkers {
  const factory InitializeMarkersError(final Object error, final StackTrace stackTrace) = _$InitializeMarkersError;

  Object get error;

  StackTrace get stackTrace;

  @JsonKey(ignore: true)
  _$$InitializeMarkersErrorCopyWith<_$InitializeMarkersError> get copyWith => throw _privateConstructorUsedError;
}
