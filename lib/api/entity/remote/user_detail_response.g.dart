// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_detail_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserDetailResponse _$$_UserDetailResponseFromJson(
        Map<String, dynamic> json) =>
    _$_UserDetailResponse(
      id: json['id'] as int,
      userId: json['user_id'] as int,
      name: json['name'] as String,
      balance: json['balance'] as int,
    );

Map<String, dynamic> _$$_UserDetailResponseToJson(
        _$_UserDetailResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'name': instance.name,
      'balance': instance.balance,
    };
