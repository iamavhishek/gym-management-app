// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'class_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ClassModel _$ClassModelFromJson(Map<String, dynamic> json) => _ClassModel(
  id: json['id'] as String,
  name: json['name'] as String,
  description: json['description'] as String? ?? '',
  trainerId: json['trainerId'] as String,
  trainerName: json['trainerName'] as String? ?? '',
  startTime: DateTime.parse(json['startTime'] as String),
  endTime: DateTime.parse(json['endTime'] as String),
  maxCapacity: (json['maxCapacity'] as num).toInt(),
  bookedCount: (json['bookedCount'] as num?)?.toInt() ?? 0,
  status: json['status'] as String,
  type: json['type'] as String,
  imageUrl: json['imageUrl'] as String?,
  recurrenceRule: json['recurrenceRule'] as String?,
);

Map<String, dynamic> _$ClassModelToJson(_ClassModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'trainerId': instance.trainerId,
      'trainerName': instance.trainerName,
      'startTime': instance.startTime.toIso8601String(),
      'endTime': instance.endTime.toIso8601String(),
      'maxCapacity': instance.maxCapacity,
      'bookedCount': instance.bookedCount,
      'status': instance.status,
      'type': instance.type,
      'imageUrl': instance.imageUrl,
      'recurrenceRule': instance.recurrenceRule,
    };

_ClassBookingModel _$ClassBookingModelFromJson(Map<String, dynamic> json) =>
    _ClassBookingModel(
      id: json['id'] as String,
      classId: json['classId'] as String,
      memberId: json['memberId'] as String,
      bookingDate: DateTime.parse(json['bookingDate'] as String),
      status: json['status'] as String? ?? 'confirmed',
      attended: json['attended'] as bool?,
      notes: json['notes'] as String?,
    );

Map<String, dynamic> _$ClassBookingModelToJson(_ClassBookingModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'classId': instance.classId,
      'memberId': instance.memberId,
      'bookingDate': instance.bookingDate.toIso8601String(),
      'status': instance.status,
      'attended': instance.attended,
      'notes': instance.notes,
    };
