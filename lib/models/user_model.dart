import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
abstract class UserModel with _$UserModel {
  const factory UserModel({
    required String id,
    required String email,
    required String firstName,
    required String lastName,
    required String
    role, // 'admin', 'manager', 'trainer', 'member', 'receptionist'
    String? phone,
    String? profileImage,
    String? dateOfBirth,
    String? gender,
    String? address,
    bool? isActive,
    String? emergencyContactName,
    String? emergencyContactPhone,
    String? medicalConditions,
    String? bloodGroup,
    DateTime? lastLogin,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
