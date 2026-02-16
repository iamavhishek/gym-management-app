// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'class_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ClassModel {

 String get id; String get name; String get description; String get trainerId; String get trainerName; DateTime get startTime; DateTime get endTime; int get maxCapacity; int get bookedCount; String get status;// 'scheduled', 'cancelled', 'completed', 'ongoing'
 String get type;// 'yoga', 'zumba', 'boxing'
 String? get imageUrl; String? get recurrenceRule;
/// Create a copy of ClassModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClassModelCopyWith<ClassModel> get copyWith => _$ClassModelCopyWithImpl<ClassModel>(this as ClassModel, _$identity);

  /// Serializes this ClassModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClassModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.trainerId, trainerId) || other.trainerId == trainerId)&&(identical(other.trainerName, trainerName) || other.trainerName == trainerName)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.endTime, endTime) || other.endTime == endTime)&&(identical(other.maxCapacity, maxCapacity) || other.maxCapacity == maxCapacity)&&(identical(other.bookedCount, bookedCount) || other.bookedCount == bookedCount)&&(identical(other.status, status) || other.status == status)&&(identical(other.type, type) || other.type == type)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.recurrenceRule, recurrenceRule) || other.recurrenceRule == recurrenceRule));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,trainerId,trainerName,startTime,endTime,maxCapacity,bookedCount,status,type,imageUrl,recurrenceRule);

@override
String toString() {
  return 'ClassModel(id: $id, name: $name, description: $description, trainerId: $trainerId, trainerName: $trainerName, startTime: $startTime, endTime: $endTime, maxCapacity: $maxCapacity, bookedCount: $bookedCount, status: $status, type: $type, imageUrl: $imageUrl, recurrenceRule: $recurrenceRule)';
}


}

/// @nodoc
abstract mixin class $ClassModelCopyWith<$Res>  {
  factory $ClassModelCopyWith(ClassModel value, $Res Function(ClassModel) _then) = _$ClassModelCopyWithImpl;
@useResult
$Res call({
 String id, String name, String description, String trainerId, String trainerName, DateTime startTime, DateTime endTime, int maxCapacity, int bookedCount, String status, String type, String? imageUrl, String? recurrenceRule
});




}
/// @nodoc
class _$ClassModelCopyWithImpl<$Res>
    implements $ClassModelCopyWith<$Res> {
  _$ClassModelCopyWithImpl(this._self, this._then);

  final ClassModel _self;
  final $Res Function(ClassModel) _then;

/// Create a copy of ClassModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? description = null,Object? trainerId = null,Object? trainerName = null,Object? startTime = null,Object? endTime = null,Object? maxCapacity = null,Object? bookedCount = null,Object? status = null,Object? type = null,Object? imageUrl = freezed,Object? recurrenceRule = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,trainerId: null == trainerId ? _self.trainerId : trainerId // ignore: cast_nullable_to_non_nullable
as String,trainerName: null == trainerName ? _self.trainerName : trainerName // ignore: cast_nullable_to_non_nullable
as String,startTime: null == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as DateTime,endTime: null == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as DateTime,maxCapacity: null == maxCapacity ? _self.maxCapacity : maxCapacity // ignore: cast_nullable_to_non_nullable
as int,bookedCount: null == bookedCount ? _self.bookedCount : bookedCount // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,recurrenceRule: freezed == recurrenceRule ? _self.recurrenceRule : recurrenceRule // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ClassModel].
extension ClassModelPatterns on ClassModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClassModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClassModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClassModel value)  $default,){
final _that = this;
switch (_that) {
case _ClassModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClassModel value)?  $default,){
final _that = this;
switch (_that) {
case _ClassModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String description,  String trainerId,  String trainerName,  DateTime startTime,  DateTime endTime,  int maxCapacity,  int bookedCount,  String status,  String type,  String? imageUrl,  String? recurrenceRule)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClassModel() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.trainerId,_that.trainerName,_that.startTime,_that.endTime,_that.maxCapacity,_that.bookedCount,_that.status,_that.type,_that.imageUrl,_that.recurrenceRule);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String description,  String trainerId,  String trainerName,  DateTime startTime,  DateTime endTime,  int maxCapacity,  int bookedCount,  String status,  String type,  String? imageUrl,  String? recurrenceRule)  $default,) {final _that = this;
switch (_that) {
case _ClassModel():
return $default(_that.id,_that.name,_that.description,_that.trainerId,_that.trainerName,_that.startTime,_that.endTime,_that.maxCapacity,_that.bookedCount,_that.status,_that.type,_that.imageUrl,_that.recurrenceRule);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String description,  String trainerId,  String trainerName,  DateTime startTime,  DateTime endTime,  int maxCapacity,  int bookedCount,  String status,  String type,  String? imageUrl,  String? recurrenceRule)?  $default,) {final _that = this;
switch (_that) {
case _ClassModel() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.trainerId,_that.trainerName,_that.startTime,_that.endTime,_that.maxCapacity,_that.bookedCount,_that.status,_that.type,_that.imageUrl,_that.recurrenceRule);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ClassModel implements ClassModel {
  const _ClassModel({required this.id, required this.name, this.description = '', required this.trainerId, this.trainerName = '', required this.startTime, required this.endTime, required this.maxCapacity, this.bookedCount = 0, required this.status, required this.type, this.imageUrl, this.recurrenceRule});
  factory _ClassModel.fromJson(Map<String, dynamic> json) => _$ClassModelFromJson(json);

@override final  String id;
@override final  String name;
@override@JsonKey() final  String description;
@override final  String trainerId;
@override@JsonKey() final  String trainerName;
@override final  DateTime startTime;
@override final  DateTime endTime;
@override final  int maxCapacity;
@override@JsonKey() final  int bookedCount;
@override final  String status;
// 'scheduled', 'cancelled', 'completed', 'ongoing'
@override final  String type;
// 'yoga', 'zumba', 'boxing'
@override final  String? imageUrl;
@override final  String? recurrenceRule;

/// Create a copy of ClassModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClassModelCopyWith<_ClassModel> get copyWith => __$ClassModelCopyWithImpl<_ClassModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ClassModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClassModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.trainerId, trainerId) || other.trainerId == trainerId)&&(identical(other.trainerName, trainerName) || other.trainerName == trainerName)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.endTime, endTime) || other.endTime == endTime)&&(identical(other.maxCapacity, maxCapacity) || other.maxCapacity == maxCapacity)&&(identical(other.bookedCount, bookedCount) || other.bookedCount == bookedCount)&&(identical(other.status, status) || other.status == status)&&(identical(other.type, type) || other.type == type)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.recurrenceRule, recurrenceRule) || other.recurrenceRule == recurrenceRule));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,trainerId,trainerName,startTime,endTime,maxCapacity,bookedCount,status,type,imageUrl,recurrenceRule);

@override
String toString() {
  return 'ClassModel(id: $id, name: $name, description: $description, trainerId: $trainerId, trainerName: $trainerName, startTime: $startTime, endTime: $endTime, maxCapacity: $maxCapacity, bookedCount: $bookedCount, status: $status, type: $type, imageUrl: $imageUrl, recurrenceRule: $recurrenceRule)';
}


}

/// @nodoc
abstract mixin class _$ClassModelCopyWith<$Res> implements $ClassModelCopyWith<$Res> {
  factory _$ClassModelCopyWith(_ClassModel value, $Res Function(_ClassModel) _then) = __$ClassModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String description, String trainerId, String trainerName, DateTime startTime, DateTime endTime, int maxCapacity, int bookedCount, String status, String type, String? imageUrl, String? recurrenceRule
});




}
/// @nodoc
class __$ClassModelCopyWithImpl<$Res>
    implements _$ClassModelCopyWith<$Res> {
  __$ClassModelCopyWithImpl(this._self, this._then);

  final _ClassModel _self;
  final $Res Function(_ClassModel) _then;

/// Create a copy of ClassModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? description = null,Object? trainerId = null,Object? trainerName = null,Object? startTime = null,Object? endTime = null,Object? maxCapacity = null,Object? bookedCount = null,Object? status = null,Object? type = null,Object? imageUrl = freezed,Object? recurrenceRule = freezed,}) {
  return _then(_ClassModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,trainerId: null == trainerId ? _self.trainerId : trainerId // ignore: cast_nullable_to_non_nullable
as String,trainerName: null == trainerName ? _self.trainerName : trainerName // ignore: cast_nullable_to_non_nullable
as String,startTime: null == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as DateTime,endTime: null == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as DateTime,maxCapacity: null == maxCapacity ? _self.maxCapacity : maxCapacity // ignore: cast_nullable_to_non_nullable
as int,bookedCount: null == bookedCount ? _self.bookedCount : bookedCount // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,recurrenceRule: freezed == recurrenceRule ? _self.recurrenceRule : recurrenceRule // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ClassBookingModel {

 String get id; String get classId; String get memberId; DateTime get bookingDate; String get status;// 'confirmed', 'cancelled', 'waitlisted'
 bool? get attended; String? get notes;
/// Create a copy of ClassBookingModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClassBookingModelCopyWith<ClassBookingModel> get copyWith => _$ClassBookingModelCopyWithImpl<ClassBookingModel>(this as ClassBookingModel, _$identity);

  /// Serializes this ClassBookingModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClassBookingModel&&(identical(other.id, id) || other.id == id)&&(identical(other.classId, classId) || other.classId == classId)&&(identical(other.memberId, memberId) || other.memberId == memberId)&&(identical(other.bookingDate, bookingDate) || other.bookingDate == bookingDate)&&(identical(other.status, status) || other.status == status)&&(identical(other.attended, attended) || other.attended == attended)&&(identical(other.notes, notes) || other.notes == notes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,classId,memberId,bookingDate,status,attended,notes);

@override
String toString() {
  return 'ClassBookingModel(id: $id, classId: $classId, memberId: $memberId, bookingDate: $bookingDate, status: $status, attended: $attended, notes: $notes)';
}


}

/// @nodoc
abstract mixin class $ClassBookingModelCopyWith<$Res>  {
  factory $ClassBookingModelCopyWith(ClassBookingModel value, $Res Function(ClassBookingModel) _then) = _$ClassBookingModelCopyWithImpl;
@useResult
$Res call({
 String id, String classId, String memberId, DateTime bookingDate, String status, bool? attended, String? notes
});




}
/// @nodoc
class _$ClassBookingModelCopyWithImpl<$Res>
    implements $ClassBookingModelCopyWith<$Res> {
  _$ClassBookingModelCopyWithImpl(this._self, this._then);

  final ClassBookingModel _self;
  final $Res Function(ClassBookingModel) _then;

/// Create a copy of ClassBookingModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? classId = null,Object? memberId = null,Object? bookingDate = null,Object? status = null,Object? attended = freezed,Object? notes = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,classId: null == classId ? _self.classId : classId // ignore: cast_nullable_to_non_nullable
as String,memberId: null == memberId ? _self.memberId : memberId // ignore: cast_nullable_to_non_nullable
as String,bookingDate: null == bookingDate ? _self.bookingDate : bookingDate // ignore: cast_nullable_to_non_nullable
as DateTime,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,attended: freezed == attended ? _self.attended : attended // ignore: cast_nullable_to_non_nullable
as bool?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ClassBookingModel].
extension ClassBookingModelPatterns on ClassBookingModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClassBookingModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClassBookingModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClassBookingModel value)  $default,){
final _that = this;
switch (_that) {
case _ClassBookingModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClassBookingModel value)?  $default,){
final _that = this;
switch (_that) {
case _ClassBookingModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String classId,  String memberId,  DateTime bookingDate,  String status,  bool? attended,  String? notes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClassBookingModel() when $default != null:
return $default(_that.id,_that.classId,_that.memberId,_that.bookingDate,_that.status,_that.attended,_that.notes);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String classId,  String memberId,  DateTime bookingDate,  String status,  bool? attended,  String? notes)  $default,) {final _that = this;
switch (_that) {
case _ClassBookingModel():
return $default(_that.id,_that.classId,_that.memberId,_that.bookingDate,_that.status,_that.attended,_that.notes);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String classId,  String memberId,  DateTime bookingDate,  String status,  bool? attended,  String? notes)?  $default,) {final _that = this;
switch (_that) {
case _ClassBookingModel() when $default != null:
return $default(_that.id,_that.classId,_that.memberId,_that.bookingDate,_that.status,_that.attended,_that.notes);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ClassBookingModel implements ClassBookingModel {
  const _ClassBookingModel({required this.id, required this.classId, required this.memberId, required this.bookingDate, this.status = 'confirmed', this.attended, this.notes});
  factory _ClassBookingModel.fromJson(Map<String, dynamic> json) => _$ClassBookingModelFromJson(json);

@override final  String id;
@override final  String classId;
@override final  String memberId;
@override final  DateTime bookingDate;
@override@JsonKey() final  String status;
// 'confirmed', 'cancelled', 'waitlisted'
@override final  bool? attended;
@override final  String? notes;

/// Create a copy of ClassBookingModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClassBookingModelCopyWith<_ClassBookingModel> get copyWith => __$ClassBookingModelCopyWithImpl<_ClassBookingModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ClassBookingModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClassBookingModel&&(identical(other.id, id) || other.id == id)&&(identical(other.classId, classId) || other.classId == classId)&&(identical(other.memberId, memberId) || other.memberId == memberId)&&(identical(other.bookingDate, bookingDate) || other.bookingDate == bookingDate)&&(identical(other.status, status) || other.status == status)&&(identical(other.attended, attended) || other.attended == attended)&&(identical(other.notes, notes) || other.notes == notes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,classId,memberId,bookingDate,status,attended,notes);

@override
String toString() {
  return 'ClassBookingModel(id: $id, classId: $classId, memberId: $memberId, bookingDate: $bookingDate, status: $status, attended: $attended, notes: $notes)';
}


}

/// @nodoc
abstract mixin class _$ClassBookingModelCopyWith<$Res> implements $ClassBookingModelCopyWith<$Res> {
  factory _$ClassBookingModelCopyWith(_ClassBookingModel value, $Res Function(_ClassBookingModel) _then) = __$ClassBookingModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String classId, String memberId, DateTime bookingDate, String status, bool? attended, String? notes
});




}
/// @nodoc
class __$ClassBookingModelCopyWithImpl<$Res>
    implements _$ClassBookingModelCopyWith<$Res> {
  __$ClassBookingModelCopyWithImpl(this._self, this._then);

  final _ClassBookingModel _self;
  final $Res Function(_ClassBookingModel) _then;

/// Create a copy of ClassBookingModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? classId = null,Object? memberId = null,Object? bookingDate = null,Object? status = null,Object? attended = freezed,Object? notes = freezed,}) {
  return _then(_ClassBookingModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,classId: null == classId ? _self.classId : classId // ignore: cast_nullable_to_non_nullable
as String,memberId: null == memberId ? _self.memberId : memberId // ignore: cast_nullable_to_non_nullable
as String,bookingDate: null == bookingDate ? _self.bookingDate : bookingDate // ignore: cast_nullable_to_non_nullable
as DateTime,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,attended: freezed == attended ? _self.attended : attended // ignore: cast_nullable_to_non_nullable
as bool?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
