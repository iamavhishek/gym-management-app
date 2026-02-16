// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserModel _$UserModelFromJson(Map<String, dynamic> json) => _UserModel(
  id: json['id'] as String,
  email: json['email'] as String,
  firstName: json['firstName'] as String,
  lastName: json['lastName'] as String,
  role: json['role'] as String,
  phone: json['phone'] as String?,
  profileImage: json['profileImage'] as String?,
  dateOfBirth: json['dateOfBirth'] as String?,
  gender: json['gender'] as String?,
  address: json['address'] as String?,
  isActive: json['isActive'] as bool?,
  emergencyContactName: json['emergencyContactName'] as String?,
  emergencyContactPhone: json['emergencyContactPhone'] as String?,
  medicalConditions: json['medicalConditions'] as String?,
  bloodGroup: json['bloodGroup'] as String?,
  lastLogin: json['lastLogin'] == null
      ? null
      : DateTime.parse(json['lastLogin'] as String),
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
  updatedAt: json['updatedAt'] == null
      ? null
      : DateTime.parse(json['updatedAt'] as String),
);

Map<String, dynamic> _$UserModelToJson(_UserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'role': instance.role,
      'phone': instance.phone,
      'profileImage': instance.profileImage,
      'dateOfBirth': instance.dateOfBirth,
      'gender': instance.gender,
      'address': instance.address,
      'isActive': instance.isActive,
      'emergencyContactName': instance.emergencyContactName,
      'emergencyContactPhone': instance.emergencyContactPhone,
      'medicalConditions': instance.medicalConditions,
      'bloodGroup': instance.bloodGroup,
      'lastLogin': instance.lastLogin?.toIso8601String(),
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
