// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserResponse _$$_UserResponseFromJson(Map<String, dynamic> json) =>
    _$_UserResponse(
      id: json['id'] as int,
      name: json['name'] as String,
      accountIds:
          (json['account_ids'] as List<dynamic>).map((e) => e as int).toList(),
    );

Map<String, dynamic> _$$_UserResponseToJson(_$_UserResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'account_ids': instance.accountIds,
    };
