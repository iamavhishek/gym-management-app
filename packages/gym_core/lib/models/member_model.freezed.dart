// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'member_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MemberModel {

 String get id; String get userId; String get membershipNumber; String? get height; String? get weight; String? get bmi; String? get goals; String? get qrCode; String? get rfidTag; String? get joinedDate;// Backend returns date as string (e.g., "2024-01-15")
 UserModel? get user;// Nested user details
// Membership details
 String? get planId; String? get planName; String? get activeMembershipId; String? get expiryDate;// Backend returns date as string
 String? get status;// 'active', 'expired', 'frozen', 'inactive'
// Body measurements
 String? get bodyFatPercentage; String? get muscleMass; String? get chestMeasurement; String? get waistMeasurement; String? get hipMeasurement; String? get medicalHistory; String? get notes;// For dashboard or lists
 double? get attendanceRate; int? get remainingSessions;
/// Create a copy of MemberModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MemberModelCopyWith<MemberModel> get copyWith => _$MemberModelCopyWithImpl<MemberModel>(this as MemberModel, _$identity);

  /// Serializes this MemberModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MemberModel&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.membershipNumber, membershipNumber) || other.membershipNumber == membershipNumber)&&(identical(other.height, height) || other.height == height)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.bmi, bmi) || other.bmi == bmi)&&(identical(other.goals, goals) || other.goals == goals)&&(identical(other.qrCode, qrCode) || other.qrCode == qrCode)&&(identical(other.rfidTag, rfidTag) || other.rfidTag == rfidTag)&&(identical(other.joinedDate, joinedDate) || other.joinedDate == joinedDate)&&(identical(other.user, user) || other.user == user)&&(identical(other.planId, planId) || other.planId == planId)&&(identical(other.planName, planName) || other.planName == planName)&&(identical(other.activeMembershipId, activeMembershipId) || other.activeMembershipId == activeMembershipId)&&(identical(other.expiryDate, expiryDate) || other.expiryDate == expiryDate)&&(identical(other.status, status) || other.status == status)&&(identical(other.bodyFatPercentage, bodyFatPercentage) || other.bodyFatPercentage == bodyFatPercentage)&&(identical(other.muscleMass, muscleMass) || other.muscleMass == muscleMass)&&(identical(other.chestMeasurement, chestMeasurement) || other.chestMeasurement == chestMeasurement)&&(identical(other.waistMeasurement, waistMeasurement) || other.waistMeasurement == waistMeasurement)&&(identical(other.hipMeasurement, hipMeasurement) || other.hipMeasurement == hipMeasurement)&&(identical(other.medicalHistory, medicalHistory) || other.medicalHistory == medicalHistory)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.attendanceRate, attendanceRate) || other.attendanceRate == attendanceRate)&&(identical(other.remainingSessions, remainingSessions) || other.remainingSessions == remainingSessions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,userId,membershipNumber,height,weight,bmi,goals,qrCode,rfidTag,joinedDate,user,planId,planName,activeMembershipId,expiryDate,status,bodyFatPercentage,muscleMass,chestMeasurement,waistMeasurement,hipMeasurement,medicalHistory,notes,attendanceRate,remainingSessions]);

@override
String toString() {
  return 'MemberModel(id: $id, userId: $userId, membershipNumber: $membershipNumber, height: $height, weight: $weight, bmi: $bmi, goals: $goals, qrCode: $qrCode, rfidTag: $rfidTag, joinedDate: $joinedDate, user: $user, planId: $planId, planName: $planName, activeMembershipId: $activeMembershipId, expiryDate: $expiryDate, status: $status, bodyFatPercentage: $bodyFatPercentage, muscleMass: $muscleMass, chestMeasurement: $chestMeasurement, waistMeasurement: $waistMeasurement, hipMeasurement: $hipMeasurement, medicalHistory: $medicalHistory, notes: $notes, attendanceRate: $attendanceRate, remainingSessions: $remainingSessions)';
}


}

/// @nodoc
abstract mixin class $MemberModelCopyWith<$Res>  {
  factory $MemberModelCopyWith(MemberModel value, $Res Function(MemberModel) _then) = _$MemberModelCopyWithImpl;
@useResult
$Res call({
 String id, String userId, String membershipNumber, String? height, String? weight, String? bmi, String? goals, String? qrCode, String? rfidTag, String? joinedDate, UserModel? user, String? planId, String? planName, String? activeMembershipId, String? expiryDate, String? status, String? bodyFatPercentage, String? muscleMass, String? chestMeasurement, String? waistMeasurement, String? hipMeasurement, String? medicalHistory, String? notes, double? attendanceRate, int? remainingSessions
});


$UserModelCopyWith<$Res>? get user;

}
/// @nodoc
class _$MemberModelCopyWithImpl<$Res>
    implements $MemberModelCopyWith<$Res> {
  _$MemberModelCopyWithImpl(this._self, this._then);

  final MemberModel _self;
  final $Res Function(MemberModel) _then;

/// Create a copy of MemberModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = null,Object? membershipNumber = null,Object? height = freezed,Object? weight = freezed,Object? bmi = freezed,Object? goals = freezed,Object? qrCode = freezed,Object? rfidTag = freezed,Object? joinedDate = freezed,Object? user = freezed,Object? planId = freezed,Object? planName = freezed,Object? activeMembershipId = freezed,Object? expiryDate = freezed,Object? status = freezed,Object? bodyFatPercentage = freezed,Object? muscleMass = freezed,Object? chestMeasurement = freezed,Object? waistMeasurement = freezed,Object? hipMeasurement = freezed,Object? medicalHistory = freezed,Object? notes = freezed,Object? attendanceRate = freezed,Object? remainingSessions = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,membershipNumber: null == membershipNumber ? _self.membershipNumber : membershipNumber // ignore: cast_nullable_to_non_nullable
as String,height: freezed == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as String?,weight: freezed == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as String?,bmi: freezed == bmi ? _self.bmi : bmi // ignore: cast_nullable_to_non_nullable
as String?,goals: freezed == goals ? _self.goals : goals // ignore: cast_nullable_to_non_nullable
as String?,qrCode: freezed == qrCode ? _self.qrCode : qrCode // ignore: cast_nullable_to_non_nullable
as String?,rfidTag: freezed == rfidTag ? _self.rfidTag : rfidTag // ignore: cast_nullable_to_non_nullable
as String?,joinedDate: freezed == joinedDate ? _self.joinedDate : joinedDate // ignore: cast_nullable_to_non_nullable
as String?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserModel?,planId: freezed == planId ? _self.planId : planId // ignore: cast_nullable_to_non_nullable
as String?,planName: freezed == planName ? _self.planName : planName // ignore: cast_nullable_to_non_nullable
as String?,activeMembershipId: freezed == activeMembershipId ? _self.activeMembershipId : activeMembershipId // ignore: cast_nullable_to_non_nullable
as String?,expiryDate: freezed == expiryDate ? _self.expiryDate : expiryDate // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,bodyFatPercentage: freezed == bodyFatPercentage ? _self.bodyFatPercentage : bodyFatPercentage // ignore: cast_nullable_to_non_nullable
as String?,muscleMass: freezed == muscleMass ? _self.muscleMass : muscleMass // ignore: cast_nullable_to_non_nullable
as String?,chestMeasurement: freezed == chestMeasurement ? _self.chestMeasurement : chestMeasurement // ignore: cast_nullable_to_non_nullable
as String?,waistMeasurement: freezed == waistMeasurement ? _self.waistMeasurement : waistMeasurement // ignore: cast_nullable_to_non_nullable
as String?,hipMeasurement: freezed == hipMeasurement ? _self.hipMeasurement : hipMeasurement // ignore: cast_nullable_to_non_nullable
as String?,medicalHistory: freezed == medicalHistory ? _self.medicalHistory : medicalHistory // ignore: cast_nullable_to_non_nullable
as String?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,attendanceRate: freezed == attendanceRate ? _self.attendanceRate : attendanceRate // ignore: cast_nullable_to_non_nullable
as double?,remainingSessions: freezed == remainingSessions ? _self.remainingSessions : remainingSessions // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}
/// Create a copy of MemberModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserModelCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserModelCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// Adds pattern-matching-related methods to [MemberModel].
extension MemberModelPatterns on MemberModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MemberModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MemberModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MemberModel value)  $default,){
final _that = this;
switch (_that) {
case _MemberModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MemberModel value)?  $default,){
final _that = this;
switch (_that) {
case _MemberModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String userId,  String membershipNumber,  String? height,  String? weight,  String? bmi,  String? goals,  String? qrCode,  String? rfidTag,  String? joinedDate,  UserModel? user,  String? planId,  String? planName,  String? activeMembershipId,  String? expiryDate,  String? status,  String? bodyFatPercentage,  String? muscleMass,  String? chestMeasurement,  String? waistMeasurement,  String? hipMeasurement,  String? medicalHistory,  String? notes,  double? attendanceRate,  int? remainingSessions)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MemberModel() when $default != null:
return $default(_that.id,_that.userId,_that.membershipNumber,_that.height,_that.weight,_that.bmi,_that.goals,_that.qrCode,_that.rfidTag,_that.joinedDate,_that.user,_that.planId,_that.planName,_that.activeMembershipId,_that.expiryDate,_that.status,_that.bodyFatPercentage,_that.muscleMass,_that.chestMeasurement,_that.waistMeasurement,_that.hipMeasurement,_that.medicalHistory,_that.notes,_that.attendanceRate,_that.remainingSessions);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String userId,  String membershipNumber,  String? height,  String? weight,  String? bmi,  String? goals,  String? qrCode,  String? rfidTag,  String? joinedDate,  UserModel? user,  String? planId,  String? planName,  String? activeMembershipId,  String? expiryDate,  String? status,  String? bodyFatPercentage,  String? muscleMass,  String? chestMeasurement,  String? waistMeasurement,  String? hipMeasurement,  String? medicalHistory,  String? notes,  double? attendanceRate,  int? remainingSessions)  $default,) {final _that = this;
switch (_that) {
case _MemberModel():
return $default(_that.id,_that.userId,_that.membershipNumber,_that.height,_that.weight,_that.bmi,_that.goals,_that.qrCode,_that.rfidTag,_that.joinedDate,_that.user,_that.planId,_that.planName,_that.activeMembershipId,_that.expiryDate,_that.status,_that.bodyFatPercentage,_that.muscleMass,_that.chestMeasurement,_that.waistMeasurement,_that.hipMeasurement,_that.medicalHistory,_that.notes,_that.attendanceRate,_that.remainingSessions);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String userId,  String membershipNumber,  String? height,  String? weight,  String? bmi,  String? goals,  String? qrCode,  String? rfidTag,  String? joinedDate,  UserModel? user,  String? planId,  String? planName,  String? activeMembershipId,  String? expiryDate,  String? status,  String? bodyFatPercentage,  String? muscleMass,  String? chestMeasurement,  String? waistMeasurement,  String? hipMeasurement,  String? medicalHistory,  String? notes,  double? attendanceRate,  int? remainingSessions)?  $default,) {final _that = this;
switch (_that) {
case _MemberModel() when $default != null:
return $default(_that.id,_that.userId,_that.membershipNumber,_that.height,_that.weight,_that.bmi,_that.goals,_that.qrCode,_that.rfidTag,_that.joinedDate,_that.user,_that.planId,_that.planName,_that.activeMembershipId,_that.expiryDate,_that.status,_that.bodyFatPercentage,_that.muscleMass,_that.chestMeasurement,_that.waistMeasurement,_that.hipMeasurement,_that.medicalHistory,_that.notes,_that.attendanceRate,_that.remainingSessions);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MemberModel implements MemberModel {
  const _MemberModel({required this.id, required this.userId, required this.membershipNumber, this.height, this.weight, this.bmi, this.goals, this.qrCode, this.rfidTag, this.joinedDate, this.user, this.planId, this.planName, this.activeMembershipId, this.expiryDate, this.status, this.bodyFatPercentage, this.muscleMass, this.chestMeasurement, this.waistMeasurement, this.hipMeasurement, this.medicalHistory, this.notes, this.attendanceRate, this.remainingSessions});
  factory _MemberModel.fromJson(Map<String, dynamic> json) => _$MemberModelFromJson(json);

@override final  String id;
@override final  String userId;
@override final  String membershipNumber;
@override final  String? height;
@override final  String? weight;
@override final  String? bmi;
@override final  String? goals;
@override final  String? qrCode;
@override final  String? rfidTag;
@override final  String? joinedDate;
// Backend returns date as string (e.g., "2024-01-15")
@override final  UserModel? user;
// Nested user details
// Membership details
@override final  String? planId;
@override final  String? planName;
@override final  String? activeMembershipId;
@override final  String? expiryDate;
// Backend returns date as string
@override final  String? status;
// 'active', 'expired', 'frozen', 'inactive'
// Body measurements
@override final  String? bodyFatPercentage;
@override final  String? muscleMass;
@override final  String? chestMeasurement;
@override final  String? waistMeasurement;
@override final  String? hipMeasurement;
@override final  String? medicalHistory;
@override final  String? notes;
// For dashboard or lists
@override final  double? attendanceRate;
@override final  int? remainingSessions;

/// Create a copy of MemberModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MemberModelCopyWith<_MemberModel> get copyWith => __$MemberModelCopyWithImpl<_MemberModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MemberModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MemberModel&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.membershipNumber, membershipNumber) || other.membershipNumber == membershipNumber)&&(identical(other.height, height) || other.height == height)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.bmi, bmi) || other.bmi == bmi)&&(identical(other.goals, goals) || other.goals == goals)&&(identical(other.qrCode, qrCode) || other.qrCode == qrCode)&&(identical(other.rfidTag, rfidTag) || other.rfidTag == rfidTag)&&(identical(other.joinedDate, joinedDate) || other.joinedDate == joinedDate)&&(identical(other.user, user) || other.user == user)&&(identical(other.planId, planId) || other.planId == planId)&&(identical(other.planName, planName) || other.planName == planName)&&(identical(other.activeMembershipId, activeMembershipId) || other.activeMembershipId == activeMembershipId)&&(identical(other.expiryDate, expiryDate) || other.expiryDate == expiryDate)&&(identical(other.status, status) || other.status == status)&&(identical(other.bodyFatPercentage, bodyFatPercentage) || other.bodyFatPercentage == bodyFatPercentage)&&(identical(other.muscleMass, muscleMass) || other.muscleMass == muscleMass)&&(identical(other.chestMeasurement, chestMeasurement) || other.chestMeasurement == chestMeasurement)&&(identical(other.waistMeasurement, waistMeasurement) || other.waistMeasurement == waistMeasurement)&&(identical(other.hipMeasurement, hipMeasurement) || other.hipMeasurement == hipMeasurement)&&(identical(other.medicalHistory, medicalHistory) || other.medicalHistory == medicalHistory)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.attendanceRate, attendanceRate) || other.attendanceRate == attendanceRate)&&(identical(other.remainingSessions, remainingSessions) || other.remainingSessions == remainingSessions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,userId,membershipNumber,height,weight,bmi,goals,qrCode,rfidTag,joinedDate,user,planId,planName,activeMembershipId,expiryDate,status,bodyFatPercentage,muscleMass,chestMeasurement,waistMeasurement,hipMeasurement,medicalHistory,notes,attendanceRate,remainingSessions]);

@override
String toString() {
  return 'MemberModel(id: $id, userId: $userId, membershipNumber: $membershipNumber, height: $height, weight: $weight, bmi: $bmi, goals: $goals, qrCode: $qrCode, rfidTag: $rfidTag, joinedDate: $joinedDate, user: $user, planId: $planId, planName: $planName, activeMembershipId: $activeMembershipId, expiryDate: $expiryDate, status: $status, bodyFatPercentage: $bodyFatPercentage, muscleMass: $muscleMass, chestMeasurement: $chestMeasurement, waistMeasurement: $waistMeasurement, hipMeasurement: $hipMeasurement, medicalHistory: $medicalHistory, notes: $notes, attendanceRate: $attendanceRate, remainingSessions: $remainingSessions)';
}


}

/// @nodoc
abstract mixin class _$MemberModelCopyWith<$Res> implements $MemberModelCopyWith<$Res> {
  factory _$MemberModelCopyWith(_MemberModel value, $Res Function(_MemberModel) _then) = __$MemberModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String userId, String membershipNumber, String? height, String? weight, String? bmi, String? goals, String? qrCode, String? rfidTag, String? joinedDate, UserModel? user, String? planId, String? planName, String? activeMembershipId, String? expiryDate, String? status, String? bodyFatPercentage, String? muscleMass, String? chestMeasurement, String? waistMeasurement, String? hipMeasurement, String? medicalHistory, String? notes, double? attendanceRate, int? remainingSessions
});


@override $UserModelCopyWith<$Res>? get user;

}
/// @nodoc
class __$MemberModelCopyWithImpl<$Res>
    implements _$MemberModelCopyWith<$Res> {
  __$MemberModelCopyWithImpl(this._self, this._then);

  final _MemberModel _self;
  final $Res Function(_MemberModel) _then;

/// Create a copy of MemberModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? membershipNumber = null,Object? height = freezed,Object? weight = freezed,Object? bmi = freezed,Object? goals = freezed,Object? qrCode = freezed,Object? rfidTag = freezed,Object? joinedDate = freezed,Object? user = freezed,Object? planId = freezed,Object? planName = freezed,Object? activeMembershipId = freezed,Object? expiryDate = freezed,Object? status = freezed,Object? bodyFatPercentage = freezed,Object? muscleMass = freezed,Object? chestMeasurement = freezed,Object? waistMeasurement = freezed,Object? hipMeasurement = freezed,Object? medicalHistory = freezed,Object? notes = freezed,Object? attendanceRate = freezed,Object? remainingSessions = freezed,}) {
  return _then(_MemberModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,membershipNumber: null == membershipNumber ? _self.membershipNumber : membershipNumber // ignore: cast_nullable_to_non_nullable
as String,height: freezed == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as String?,weight: freezed == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as String?,bmi: freezed == bmi ? _self.bmi : bmi // ignore: cast_nullable_to_non_nullable
as String?,goals: freezed == goals ? _self.goals : goals // ignore: cast_nullable_to_non_nullable
as String?,qrCode: freezed == qrCode ? _self.qrCode : qrCode // ignore: cast_nullable_to_non_nullable
as String?,rfidTag: freezed == rfidTag ? _self.rfidTag : rfidTag // ignore: cast_nullable_to_non_nullable
as String?,joinedDate: freezed == joinedDate ? _self.joinedDate : joinedDate // ignore: cast_nullable_to_non_nullable
as String?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserModel?,planId: freezed == planId ? _self.planId : planId // ignore: cast_nullable_to_non_nullable
as String?,planName: freezed == planName ? _self.planName : planName // ignore: cast_nullable_to_non_nullable
as String?,activeMembershipId: freezed == activeMembershipId ? _self.activeMembershipId : activeMembershipId // ignore: cast_nullable_to_non_nullable
as String?,expiryDate: freezed == expiryDate ? _self.expiryDate : expiryDate // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,bodyFatPercentage: freezed == bodyFatPercentage ? _self.bodyFatPercentage : bodyFatPercentage // ignore: cast_nullable_to_non_nullable
as String?,muscleMass: freezed == muscleMass ? _self.muscleMass : muscleMass // ignore: cast_nullable_to_non_nullable
as String?,chestMeasurement: freezed == chestMeasurement ? _self.chestMeasurement : chestMeasurement // ignore: cast_nullable_to_non_nullable
as String?,waistMeasurement: freezed == waistMeasurement ? _self.waistMeasurement : waistMeasurement // ignore: cast_nullable_to_non_nullable
as String?,hipMeasurement: freezed == hipMeasurement ? _self.hipMeasurement : hipMeasurement // ignore: cast_nullable_to_non_nullable
as String?,medicalHistory: freezed == medicalHistory ? _self.medicalHistory : medicalHistory // ignore: cast_nullable_to_non_nullable
as String?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,attendanceRate: freezed == attendanceRate ? _self.attendanceRate : attendanceRate // ignore: cast_nullable_to_non_nullable
as double?,remainingSessions: freezed == remainingSessions ? _self.remainingSessions : remainingSessions // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

/// Create a copy of MemberModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserModelCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserModelCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

// dart format on
