import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_detail.freezed.dart';

@freezed
class UserDetail with _$UserDetail{
  const factory UserDetail({
    required int id,
    required int userId,
    required String name,
    required int balance,
  }) = _UserDetail;
}