// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserDetailTearOff {
  const _$UserDetailTearOff();

  _UserDetail call(
      {required int id,
      required int userId,
      required String name,
      required int balance}) {
    return _UserDetail(
      id: id,
      userId: userId,
      name: name,
      balance: balance,
    );
  }
}

/// @nodoc
const $UserDetail = _$UserDetailTearOff();

/// @nodoc
mixin _$UserDetail {
  int get id => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get balance => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserDetailCopyWith<UserDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDetailCopyWith<$Res> {
  factory $UserDetailCopyWith(
          UserDetail value, $Res Function(UserDetail) then) =
      _$UserDetailCopyWithImpl<$Res>;
  $Res call({int id, int userId, String name, int balance});
}

/// @nodoc
class _$UserDetailCopyWithImpl<$Res> implements $UserDetailCopyWith<$Res> {
  _$UserDetailCopyWithImpl(this._value, this._then);

  final UserDetail _value;
  // ignore: unused_field
  final $Res Function(UserDetail) _then;

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
abstract class _$UserDetailCopyWith<$Res> implements $UserDetailCopyWith<$Res> {
  factory _$UserDetailCopyWith(
          _UserDetail value, $Res Function(_UserDetail) then) =
      __$UserDetailCopyWithImpl<$Res>;
  @override
  $Res call({int id, int userId, String name, int balance});
}

/// @nodoc
class __$UserDetailCopyWithImpl<$Res> extends _$UserDetailCopyWithImpl<$Res>
    implements _$UserDetailCopyWith<$Res> {
  __$UserDetailCopyWithImpl(
      _UserDetail _value, $Res Function(_UserDetail) _then)
      : super(_value, (v) => _then(v as _UserDetail));

  @override
  _UserDetail get _value => super._value as _UserDetail;

  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? name = freezed,
    Object? balance = freezed,
  }) {
    return _then(_UserDetail(
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

class _$_UserDetail implements _UserDetail {
  const _$_UserDetail(
      {required this.id,
      required this.userId,
      required this.name,
      required this.balance});

  @override
  final int id;
  @override
  final int userId;
  @override
  final String name;
  @override
  final int balance;

  @override
  String toString() {
    return 'UserDetail(id: $id, userId: $userId, name: $name, balance: $balance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserDetail &&
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
  _$UserDetailCopyWith<_UserDetail> get copyWith =>
      __$UserDetailCopyWithImpl<_UserDetail>(this, _$identity);
}

abstract class _UserDetail implements UserDetail {
  const factory _UserDetail(
      {required int id,
      required int userId,
      required String name,
      required int balance}) = _$_UserDetail;

  @override
  int get id;
  @override
  int get userId;
  @override
  String get name;
  @override
  int get balance;
  @override
  @JsonKey(ignore: true)
  _$UserDetailCopyWith<_UserDetail> get copyWith =>
      throw _privateConstructorUsedError;
}
