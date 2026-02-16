// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'member_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MemberModel _$MemberModelFromJson(Map<String, dynamic> json) => _MemberModel(
  id: json['id'] as String,
  userId: json['userId'] as String,
  membershipNumber: json['membershipNumber'] as String,
  height: json['height'] as String?,
  weight: json['weight'] as String?,
  bmi: json['bmi'] as String?,
  goals: json['goals'] as String?,
  qrCode: json['qrCode'] as String?,
  rfidTag: json['rfidTag'] as String?,
  joinedDate: json['joinedDate'] as String?,
  user: json['user'] == null
      ? null
      : UserModel.fromJson(json['user'] as Map<String, dynamic>),
  planId: json['planId'] as String?,
  planName: json['planName'] as String?,
  activeMembershipId: json['activeMembershipId'] as String?,
  expiryDate: json['expiryDate'] as String?,
  status: json['status'] as String?,
  bodyFatPercentage: json['bodyFatPercentage'] as String?,
  muscleMass: json['muscleMass'] as String?,
  chestMeasurement: json['chestMeasurement'] as String?,
  waistMeasurement: json['waistMeasurement'] as String?,
  hipMeasurement: json['hipMeasurement'] as String?,
  medicalHistory: json['medicalHistory'] as String?,
  notes: json['notes'] as String?,
  attendanceRate: (json['attendanceRate'] as num?)?.toDouble(),
  remainingSessions: (json['remainingSessions'] as num?)?.toInt(),
);

Map<String, dynamic> _$MemberModelToJson(_MemberModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'membershipNumber': instance.membershipNumber,
      'height': instance.height,
      'weight': instance.weight,
      'bmi': instance.bmi,
      'goals': instance.goals,
      'qrCode': instance.qrCode,
      'rfidTag': instance.rfidTag,
      'joinedDate': instance.joinedDate,
      'user': instance.user,
      'planId': instance.planId,
      'planName': instance.planName,
      'activeMembershipId': instance.activeMembershipId,
      'expiryDate': instance.expiryDate,
      'status': instance.status,
      'bodyFatPercentage': instance.bodyFatPercentage,
      'muscleMass': instance.muscleMass,
      'chestMeasurement': instance.chestMeasurement,
      'waistMeasurement': instance.waistMeasurement,
      'hipMeasurement': instance.hipMeasurement,
      'medicalHistory': instance.medicalHistory,
      'notes': instance.notes,
      'attendanceRate': instance.attendanceRate,
      'remainingSessions': instance.remainingSessions,
    };
