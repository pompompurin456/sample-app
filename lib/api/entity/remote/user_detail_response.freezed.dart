// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_detail_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserDetailResponse _$UserDetailResponseFromJson(Map<String, dynamic> json) {
  return _UserDetailResponse.fromJson(json);
}

/// @nodoc
class _$UserDetailResponseTearOff {
  const _$UserDetailResponseTearOff();

  _UserDetailResponse call(
      {@JsonKey(name: 'id') required int id,
      @JsonKey(name: 'user_id') required int userId,
      @JsonKey(name: 'name') required String name,
      @JsonKey(name: 'balance') required int balance}) {
    return _UserDetailResponse(
      id: id,
      userId: userId,
      name: name,
      balance: balance,
    );
  }

  UserDetailResponse fromJson(Map<String, Object?> json) {
    return UserDetailResponse.fromJson(json);
  }
}

/// @nodoc
const $UserDetailResponse = _$UserDetailResponseTearOff();

/// @nodoc
mixin _$UserDetailResponse {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'balance')
  int get balance => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDetailResponseCopyWith<UserDetailResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDetailResponseCopyWith<$Res> {
  factory $UserDetailResponseCopyWith(
          UserDetailResponse value, $Res Function(UserDetailResponse) then) =
      _$UserDetailResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'user_id') int userId,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'balance') int balance});
}

/// @nodoc
class _$UserDetailResponseCopyWithImpl<$Res>
    implements $UserDetailResponseCopyWith<$Res> {
  _$UserDetailResponseCopyWithImpl(this._value, this._then);

  final UserDetailResponse _value;
  // ignore: unused_field
  final $Res Function(UserDetailResponse) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? name = freezed,
    Object? balance = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      balance: balance == freezed
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$UserDetailResponseCopyWith<$Res>
    implements $UserDetailResponseCopyWith<$Res> {
  factory _$UserDetailResponseCopyWith(
          _UserDetailResponse value, $Res Function(_UserDetailResponse) then) =
      __$UserDetailResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'user_id') int userId,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'balance') int balance});
}

/// @nodoc
class __$UserDetailResponseCopyWithImpl<$Res>
    extends _$UserDetailResponseCopyWithImpl<$Res>
    implements _$UserDetailResponseCopyWith<$Res> {
  __$UserDetailResponseCopyWithImpl(
      _UserDetailResponse _value, $Res Function(_UserDetailResponse) _then)
      : super(_value, (v) => _then(v as _UserDetailResponse));

  @override
  _UserDetailResponse get _value => super._value as _UserDetailResponse;

  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? name = freezed,
    Object? balance = freezed,
  }) {
    return _then(_UserDetailResponse(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      balance: balance == freezed
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserDetailResponse implements _UserDetailResponse {
  _$_UserDetailResponse(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'balance') required this.balance});

  factory _$_UserDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$$_UserDetailResponseFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'user_id')
  final int userId;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'balance')
  final int balance;

  @override
  String toString() {
    return 'UserDetailResponse(id: $id, userId: $userId, name: $name, balance: $balance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserDetailResponse &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.balance, balance));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(balance));

  @JsonKey(ignore: true)
  @override
  _$UserDetailResponseCopyWith<_UserDetailResponse> get copyWith =>
      __$UserDetailResponseCopyWithImpl<_UserDetailResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserDetailResponseToJson(this);
  }
}

abstract class _UserDetailResponse implements UserDetailResponse {
  factory _UserDetailResponse(
      {@JsonKey(name: 'id') required int id,
      @JsonKey(name: 'user_id') required int userId,
      @JsonKey(name: 'name') required String name,
      @JsonKey(name: 'balance') required int balance}) = _$_UserDetailResponse;

  factory _UserDetailResponse.fromJson(Map<String, dynamic> json) =
      _$_UserDetailResponse.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'user_id')
  int get userId;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'balance')
  int get balance;
  @override
  @JsonKey(ignore: true)
  _$UserDetailResponseCopyWith<_UserDetailResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
