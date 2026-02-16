// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attendance_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AttendanceModel _$AttendanceModelFromJson(Map<String, dynamic> json) =>
    _AttendanceModel(
      id: json['id'] as String,
      memberId: json['memberId'] as String,
      checkInTime: DateTime.parse(json['checkInTime'] as String),
      checkOutTime: json['checkOutTime'] == null
          ? null
          : DateTime.parse(json['checkOutTime'] as String),
      duration: (json['duration'] as num?)?.toInt(),
      method: json['method'] as String? ?? 'QR',
      status: json['status'] as String? ?? 'present',
      notes: json['notes'] as String?,
    );

Map<String, dynamic> _$AttendanceModelToJson(_AttendanceModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'memberId': instance.memberId,
      'checkInTime': instance.checkInTime.toIso8601String(),
      'checkOutTime': instance.checkOutTime?.toIso8601String(),
      'duration': instance.duration,
      'method': instance.method,
      'status': instance.status,
      'notes': instance.notes,
    };
