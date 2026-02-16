// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trainer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TrainerModel _$TrainerModelFromJson(Map<String, dynamic> json) =>
    _TrainerModel(
      id: json['id'] as String,
      userId: json['userId'] as String?,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      email: json['email'] as String,
      specialization: json['specialization'] as String,
      bio: json['bio'] as String? ?? '',
      phone: json['phone'] as String? ?? '',
      profileImage: json['profileImage'] as String?,
      employeeId: json['employeeId'] as String?,
      experience: (json['experience'] as num?)?.toInt(),
      hourlyRate: json['hourlyRate'] as String?,
      isAvailable: json['isAvailable'] as bool?,
      hiredDate: json['hiredDate'] as String?,
      totalSessions: (json['totalSessions'] as num?)?.toInt(),
      maxClients: (json['maxClients'] as num?)?.toInt(),
      certifications: json['certifications'] as String?,
      certificates:
          (json['certificates'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      activeClientsCount: (json['currentClients'] as num?)?.toInt() ?? 0,
      rating: json['rating'] as String?,
    );

Map<String, dynamic> _$TrainerModelToJson(_TrainerModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'specialization': instance.specialization,
      'bio': instance.bio,
      'phone': instance.phone,
      'profileImage': instance.profileImage,
      'employeeId': instance.employeeId,
      'experience': instance.experience,
      'hourlyRate': instance.hourlyRate,
      'isAvailable': instance.isAvailable,
      'hiredDate': instance.hiredDate,
      'totalSessions': instance.totalSessions,
      'maxClients': instance.maxClients,
      'certifications': instance.certifications,
      'certificates': instance.certificates,
      'currentClients': instance.activeClientsCount,
      'rating': instance.rating,
    };
