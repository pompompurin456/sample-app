// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_detail_response.freezed.dart';

part 'user_detail_response.g.dart';

@freezed
class UserDetailResponse with _$UserDetailResponse {
  factory UserDetailResponse({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'user_id') required int userId,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'balance') required int balance,
  }) = _UserDetailResponse;

  factory UserDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$UserDetailResponseFromJson(json);
}
