import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gym_management_app/core/models/user_model.dart';

part 'member_model.freezed.dart';
part 'member_model.g.dart';

@freezed
abstract class MemberModel with _$MemberModel {
  const factory MemberModel({
    required String id,
    required String userId,
    required String membershipNumber,
    String? height,
    String? weight,
    String? bmi,
    String? goals,
    String? qrCode,
    String? rfidTag,
    String? joinedDate, // Backend returns date as string (e.g., "2024-01-15")
    UserModel? user, // Nested user details
    // Membership details
    String? planId,
    String? planName,
    String? activeMembershipId,
    String? expiryDate, // Backend returns date as string
    String? status, // 'active', 'expired', 'frozen', 'inactive'
    // Body measurements
    String? bodyFatPercentage,
    String? muscleMass,
    String? chestMeasurement,
    String? waistMeasurement,
    String? hipMeasurement,
    String? medicalHistory,
    String? notes,
    // For dashboard or lists
    double? attendanceRate,
    int? remainingSessions, // If class packs
  }) = _MemberModel;

  factory MemberModel.fromJson(Map<String, dynamic> json) =>
      _$MemberModelFromJson(json);
}
