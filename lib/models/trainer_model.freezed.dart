// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trainer_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TrainerModel {

 String get id; String? get userId; String get firstName; String get lastName; String get email; String get specialization; String get bio; String get phone; String? get profileImage; String? get employeeId; int? get experience; String? get hourlyRate; bool? get isAvailable; String? get hiredDate; int? get totalSessions; int? get maxClients; String? get certifications; List<String> get certificates;@JsonKey(name: 'currentClients') int get activeClientsCount; String? get rating;
/// Create a copy of TrainerModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TrainerModelCopyWith<TrainerModel> get copyWith => _$TrainerModelCopyWithImpl<TrainerModel>(this as TrainerModel, _$identity);

  /// Serializes this TrainerModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TrainerModel&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.email, email) || other.email == email)&&(identical(other.specialization, specialization) || other.specialization == specialization)&&(identical(other.bio, bio) || other.bio == bio)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.profileImage, profileImage) || other.profileImage == profileImage)&&(identical(other.employeeId, employeeId) || other.employeeId == employeeId)&&(identical(other.experience, experience) || other.experience == experience)&&(identical(other.hourlyRate, hourlyRate) || other.hourlyRate == hourlyRate)&&(identical(other.isAvailable, isAvailable) || other.isAvailable == isAvailable)&&(identical(other.hiredDate, hiredDate) || other.hiredDate == hiredDate)&&(identical(other.totalSessions, totalSessions) || other.totalSessions == totalSessions)&&(identical(other.maxClients, maxClients) || other.maxClients == maxClients)&&(identical(other.certifications, certifications) || other.certifications == certifications)&&const DeepCollectionEquality().equals(other.certificates, certificates)&&(identical(other.activeClientsCount, activeClientsCount) || other.activeClientsCount == activeClientsCount)&&(identical(other.rating, rating) || other.rating == rating));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,userId,firstName,lastName,email,specialization,bio,phone,profileImage,employeeId,experience,hourlyRate,isAvailable,hiredDate,totalSessions,maxClients,certifications,const DeepCollectionEquality().hash(certificates),activeClientsCount,rating]);

@override
String toString() {
  return 'TrainerModel(id: $id, userId: $userId, firstName: $firstName, lastName: $lastName, email: $email, specialization: $specialization, bio: $bio, phone: $phone, profileImage: $profileImage, employeeId: $employeeId, experience: $experience, hourlyRate: $hourlyRate, isAvailable: $isAvailable, hiredDate: $hiredDate, totalSessions: $totalSessions, maxClients: $maxClients, certifications: $certifications, certificates: $certificates, activeClientsCount: $activeClientsCount, rating: $rating)';
}


}

/// @nodoc
abstract mixin class $TrainerModelCopyWith<$Res>  {
  factory $TrainerModelCopyWith(TrainerModel value, $Res Function(TrainerModel) _then) = _$TrainerModelCopyWithImpl;
@useResult
$Res call({
 String id, String? userId, String firstName, String lastName, String email, String specialization, String bio, String phone, String? profileImage, String? employeeId, int? experience, String? hourlyRate, bool? isAvailable, String? hiredDate, int? totalSessions, int? maxClients, String? certifications, List<String> certificates,@JsonKey(name: 'currentClients') int activeClientsCount, String? rating
});




}
/// @nodoc
class _$TrainerModelCopyWithImpl<$Res>
    implements $TrainerModelCopyWith<$Res> {
  _$TrainerModelCopyWithImpl(this._self, this._then);

  final TrainerModel _self;
  final $Res Function(TrainerModel) _then;

/// Create a copy of TrainerModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = freezed,Object? firstName = null,Object? lastName = null,Object? email = null,Object? specialization = null,Object? bio = null,Object? phone = null,Object? profileImage = freezed,Object? employeeId = freezed,Object? experience = freezed,Object? hourlyRate = freezed,Object? isAvailable = freezed,Object? hiredDate = freezed,Object? totalSessions = freezed,Object? maxClients = freezed,Object? certifications = freezed,Object? certificates = null,Object? activeClientsCount = null,Object? rating = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,specialization: null == specialization ? _self.specialization : specialization // ignore: cast_nullable_to_non_nullable
as String,bio: null == bio ? _self.bio : bio // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,profileImage: freezed == profileImage ? _self.profileImage : profileImage // ignore: cast_nullable_to_non_nullable
as String?,employeeId: freezed == employeeId ? _self.employeeId : employeeId // ignore: cast_nullable_to_non_nullable
as String?,experience: freezed == experience ? _self.experience : experience // ignore: cast_nullable_to_non_nullable
as int?,hourlyRate: freezed == hourlyRate ? _self.hourlyRate : hourlyRate // ignore: cast_nullable_to_non_nullable
as String?,isAvailable: freezed == isAvailable ? _self.isAvailable : isAvailable // ignore: cast_nullable_to_non_nullable
as bool?,hiredDate: freezed == hiredDate ? _self.hiredDate : hiredDate // ignore: cast_nullable_to_non_nullable
as String?,totalSessions: freezed == totalSessions ? _self.totalSessions : totalSessions // ignore: cast_nullable_to_non_nullable
as int?,maxClients: freezed == maxClients ? _self.maxClients : maxClients // ignore: cast_nullable_to_non_nullable
as int?,certifications: freezed == certifications ? _self.certifications : certifications // ignore: cast_nullable_to_non_nullable
as String?,certificates: null == certificates ? _self.certificates : certificates // ignore: cast_nullable_to_non_nullable
as List<String>,activeClientsCount: null == activeClientsCount ? _self.activeClientsCount : activeClientsCount // ignore: cast_nullable_to_non_nullable
as int,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [TrainerModel].
extension TrainerModelPatterns on TrainerModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TrainerModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TrainerModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TrainerModel value)  $default,){
final _that = this;
switch (_that) {
case _TrainerModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TrainerModel value)?  $default,){
final _that = this;
switch (_that) {
case _TrainerModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String? userId,  String firstName,  String lastName,  String email,  String specialization,  String bio,  String phone,  String? profileImage,  String? employeeId,  int? experience,  String? hourlyRate,  bool? isAvailable,  String? hiredDate,  int? totalSessions,  int? maxClients,  String? certifications,  List<String> certificates, @JsonKey(name: 'currentClients')  int activeClientsCount,  String? rating)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TrainerModel() when $default != null:
return $default(_that.id,_that.userId,_that.firstName,_that.lastName,_that.email,_that.specialization,_that.bio,_that.phone,_that.profileImage,_that.employeeId,_that.experience,_that.hourlyRate,_that.isAvailable,_that.hiredDate,_that.totalSessions,_that.maxClients,_that.certifications,_that.certificates,_that.activeClientsCount,_that.rating);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String? userId,  String firstName,  String lastName,  String email,  String specialization,  String bio,  String phone,  String? profileImage,  String? employeeId,  int? experience,  String? hourlyRate,  bool? isAvailable,  String? hiredDate,  int? totalSessions,  int? maxClients,  String? certifications,  List<String> certificates, @JsonKey(name: 'currentClients')  int activeClientsCount,  String? rating)  $default,) {final _that = this;
switch (_that) {
case _TrainerModel():
return $default(_that.id,_that.userId,_that.firstName,_that.lastName,_that.email,_that.specialization,_that.bio,_that.phone,_that.profileImage,_that.employeeId,_that.experience,_that.hourlyRate,_that.isAvailable,_that.hiredDate,_that.totalSessions,_that.maxClients,_that.certifications,_that.certificates,_that.activeClientsCount,_that.rating);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String? userId,  String firstName,  String lastName,  String email,  String specialization,  String bio,  String phone,  String? profileImage,  String? employeeId,  int? experience,  String? hourlyRate,  bool? isAvailable,  String? hiredDate,  int? totalSessions,  int? maxClients,  String? certifications,  List<String> certificates, @JsonKey(name: 'currentClients')  int activeClientsCount,  String? rating)?  $default,) {final _that = this;
switch (_that) {
case _TrainerModel() when $default != null:
return $default(_that.id,_that.userId,_that.firstName,_that.lastName,_that.email,_that.specialization,_that.bio,_that.phone,_that.profileImage,_that.employeeId,_that.experience,_that.hourlyRate,_that.isAvailable,_that.hiredDate,_that.totalSessions,_that.maxClients,_that.certifications,_that.certificates,_that.activeClientsCount,_that.rating);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TrainerModel implements TrainerModel {
  const _TrainerModel({required this.id, this.userId, required this.firstName, required this.lastName, required this.email, required this.specialization, this.bio = '', this.phone = '', this.profileImage, this.employeeId, this.experience, this.hourlyRate, this.isAvailable, this.hiredDate, this.totalSessions, this.maxClients, this.certifications, final  List<String> certificates = const [], @JsonKey(name: 'currentClients') this.activeClientsCount = 0, this.rating}): _certificates = certificates;
  factory _TrainerModel.fromJson(Map<String, dynamic> json) => _$TrainerModelFromJson(json);

@override final  String id;
@override final  String? userId;
@override final  String firstName;
@override final  String lastName;
@override final  String email;
@override final  String specialization;
@override@JsonKey() final  String bio;
@override@JsonKey() final  String phone;
@override final  String? profileImage;
@override final  String? employeeId;
@override final  int? experience;
@override final  String? hourlyRate;
@override final  bool? isAvailable;
@override final  String? hiredDate;
@override final  int? totalSessions;
@override final  int? maxClients;
@override final  String? certifications;
 final  List<String> _certificates;
@override@JsonKey() List<String> get certificates {
  if (_certificates is EqualUnmodifiableListView) return _certificates;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_certificates);
}

@override@JsonKey(name: 'currentClients') final  int activeClientsCount;
@override final  String? rating;

/// Create a copy of TrainerModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TrainerModelCopyWith<_TrainerModel> get copyWith => __$TrainerModelCopyWithImpl<_TrainerModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TrainerModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TrainerModel&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.email, email) || other.email == email)&&(identical(other.specialization, specialization) || other.specialization == specialization)&&(identical(other.bio, bio) || other.bio == bio)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.profileImage, profileImage) || other.profileImage == profileImage)&&(identical(other.employeeId, employeeId) || other.employeeId == employeeId)&&(identical(other.experience, experience) || other.experience == experience)&&(identical(other.hourlyRate, hourlyRate) || other.hourlyRate == hourlyRate)&&(identical(other.isAvailable, isAvailable) || other.isAvailable == isAvailable)&&(identical(other.hiredDate, hiredDate) || other.hiredDate == hiredDate)&&(identical(other.totalSessions, totalSessions) || other.totalSessions == totalSessions)&&(identical(other.maxClients, maxClients) || other.maxClients == maxClients)&&(identical(other.certifications, certifications) || other.certifications == certifications)&&const DeepCollectionEquality().equals(other._certificates, _certificates)&&(identical(other.activeClientsCount, activeClientsCount) || other.activeClientsCount == activeClientsCount)&&(identical(other.rating, rating) || other.rating == rating));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,userId,firstName,lastName,email,specialization,bio,phone,profileImage,employeeId,experience,hourlyRate,isAvailable,hiredDate,totalSessions,maxClients,certifications,const DeepCollectionEquality().hash(_certificates),activeClientsCount,rating]);

@override
String toString() {
  return 'TrainerModel(id: $id, userId: $userId, firstName: $firstName, lastName: $lastName, email: $email, specialization: $specialization, bio: $bio, phone: $phone, profileImage: $profileImage, employeeId: $employeeId, experience: $experience, hourlyRate: $hourlyRate, isAvailable: $isAvailable, hiredDate: $hiredDate, totalSessions: $totalSessions, maxClients: $maxClients, certifications: $certifications, certificates: $certificates, activeClientsCount: $activeClientsCount, rating: $rating)';
}


}

/// @nodoc
abstract mixin class _$TrainerModelCopyWith<$Res> implements $TrainerModelCopyWith<$Res> {
  factory _$TrainerModelCopyWith(_TrainerModel value, $Res Function(_TrainerModel) _then) = __$TrainerModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String? userId, String firstName, String lastName, String email, String specialization, String bio, String phone, String? profileImage, String? employeeId, int? experience, String? hourlyRate, bool? isAvailable, String? hiredDate, int? totalSessions, int? maxClients, String? certifications, List<String> certificates,@JsonKey(name: 'currentClients') int activeClientsCount, String? rating
});




}
/// @nodoc
class __$TrainerModelCopyWithImpl<$Res>
    implements _$TrainerModelCopyWith<$Res> {
  __$TrainerModelCopyWithImpl(this._self, this._then);

  final _TrainerModel _self;
  final $Res Function(_TrainerModel) _then;

/// Create a copy of TrainerModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = freezed,Object? firstName = null,Object? lastName = null,Object? email = null,Object? specialization = null,Object? bio = null,Object? phone = null,Object? profileImage = freezed,Object? employeeId = freezed,Object? experience = freezed,Object? hourlyRate = freezed,Object? isAvailable = freezed,Object? hiredDate = freezed,Object? totalSessions = freezed,Object? maxClients = freezed,Object? certifications = freezed,Object? certificates = null,Object? activeClientsCount = null,Object? rating = freezed,}) {
  return _then(_TrainerModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,specialization: null == specialization ? _self.specialization : specialization // ignore: cast_nullable_to_non_nullable
as String,bio: null == bio ? _self.bio : bio // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,profileImage: freezed == profileImage ? _self.profileImage : profileImage // ignore: cast_nullable_to_non_nullable
as String?,employeeId: freezed == employeeId ? _self.employeeId : employeeId // ignore: cast_nullable_to_non_nullable
as String?,experience: freezed == experience ? _self.experience : experience // ignore: cast_nullable_to_non_nullable
as int?,hourlyRate: freezed == hourlyRate ? _self.hourlyRate : hourlyRate // ignore: cast_nullable_to_non_nullable
as String?,isAvailable: freezed == isAvailable ? _self.isAvailable : isAvailable // ignore: cast_nullable_to_non_nullable
as bool?,hiredDate: freezed == hiredDate ? _self.hiredDate : hiredDate // ignore: cast_nullable_to_non_nullable
as String?,totalSessions: freezed == totalSessions ? _self.totalSessions : totalSessions // ignore: cast_nullable_to_non_nullable
as int?,maxClients: freezed == maxClients ? _self.maxClients : maxClients // ignore: cast_nullable_to_non_nullable
as int?,certifications: freezed == certifications ? _self.certifications : certifications // ignore: cast_nullable_to_non_nullable
as String?,certificates: null == certificates ? _self._certificates : certificates // ignore: cast_nullable_to_non_nullable
as List<String>,activeClientsCount: null == activeClientsCount ? _self.activeClientsCount : activeClientsCount // ignore: cast_nullable_to_non_nullable
as int,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
