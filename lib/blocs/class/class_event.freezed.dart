// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'class_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ClassEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClassEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ClassEvent()';
}


}

/// @nodoc
class $ClassEventCopyWith<$Res>  {
$ClassEventCopyWith(ClassEvent _, $Res Function(ClassEvent) __);
}


/// Adds pattern-matching-related methods to [ClassEvent].
extension ClassEventPatterns on ClassEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _BookClass value)?  bookClass,TResult Function( _JoinWaitlist value)?  joinWaitlist,TResult Function( _CreateClass value)?  createClass,TResult Function( _UpdateClass value)?  updateClass,TResult Function( _DeleteClass value)?  deleteClass,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _BookClass() when bookClass != null:
return bookClass(_that);case _JoinWaitlist() when joinWaitlist != null:
return joinWaitlist(_that);case _CreateClass() when createClass != null:
return createClass(_that);case _UpdateClass() when updateClass != null:
return updateClass(_that);case _DeleteClass() when deleteClass != null:
return deleteClass(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _BookClass value)  bookClass,required TResult Function( _JoinWaitlist value)  joinWaitlist,required TResult Function( _CreateClass value)  createClass,required TResult Function( _UpdateClass value)  updateClass,required TResult Function( _DeleteClass value)  deleteClass,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _BookClass():
return bookClass(_that);case _JoinWaitlist():
return joinWaitlist(_that);case _CreateClass():
return createClass(_that);case _UpdateClass():
return updateClass(_that);case _DeleteClass():
return deleteClass(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _BookClass value)?  bookClass,TResult? Function( _JoinWaitlist value)?  joinWaitlist,TResult? Function( _CreateClass value)?  createClass,TResult? Function( _UpdateClass value)?  updateClass,TResult? Function( _DeleteClass value)?  deleteClass,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _BookClass() when bookClass != null:
return bookClass(_that);case _JoinWaitlist() when joinWaitlist != null:
return joinWaitlist(_that);case _CreateClass() when createClass != null:
return createClass(_that);case _UpdateClass() when updateClass != null:
return updateClass(_that);case _DeleteClass() when deleteClass != null:
return deleteClass(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( String classId,  String memberId)?  bookClass,TResult Function( String classId,  String memberId)?  joinWaitlist,TResult Function( String name,  String description,  String trainerId,  int maxCapacity,  DateTime startTime,  DateTime endTime,  String type)?  createClass,TResult Function( String id,  String? name,  String? description,  int? maxCapacity,  DateTime? startTime,  DateTime? endTime,  String? status,  String? type)?  updateClass,TResult Function( String id)?  deleteClass,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _BookClass() when bookClass != null:
return bookClass(_that.classId,_that.memberId);case _JoinWaitlist() when joinWaitlist != null:
return joinWaitlist(_that.classId,_that.memberId);case _CreateClass() when createClass != null:
return createClass(_that.name,_that.description,_that.trainerId,_that.maxCapacity,_that.startTime,_that.endTime,_that.type);case _UpdateClass() when updateClass != null:
return updateClass(_that.id,_that.name,_that.description,_that.maxCapacity,_that.startTime,_that.endTime,_that.status,_that.type);case _DeleteClass() when deleteClass != null:
return deleteClass(_that.id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( String classId,  String memberId)  bookClass,required TResult Function( String classId,  String memberId)  joinWaitlist,required TResult Function( String name,  String description,  String trainerId,  int maxCapacity,  DateTime startTime,  DateTime endTime,  String type)  createClass,required TResult Function( String id,  String? name,  String? description,  int? maxCapacity,  DateTime? startTime,  DateTime? endTime,  String? status,  String? type)  updateClass,required TResult Function( String id)  deleteClass,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _BookClass():
return bookClass(_that.classId,_that.memberId);case _JoinWaitlist():
return joinWaitlist(_that.classId,_that.memberId);case _CreateClass():
return createClass(_that.name,_that.description,_that.trainerId,_that.maxCapacity,_that.startTime,_that.endTime,_that.type);case _UpdateClass():
return updateClass(_that.id,_that.name,_that.description,_that.maxCapacity,_that.startTime,_that.endTime,_that.status,_that.type);case _DeleteClass():
return deleteClass(_that.id);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( String classId,  String memberId)?  bookClass,TResult? Function( String classId,  String memberId)?  joinWaitlist,TResult? Function( String name,  String description,  String trainerId,  int maxCapacity,  DateTime startTime,  DateTime endTime,  String type)?  createClass,TResult? Function( String id,  String? name,  String? description,  int? maxCapacity,  DateTime? startTime,  DateTime? endTime,  String? status,  String? type)?  updateClass,TResult? Function( String id)?  deleteClass,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _BookClass() when bookClass != null:
return bookClass(_that.classId,_that.memberId);case _JoinWaitlist() when joinWaitlist != null:
return joinWaitlist(_that.classId,_that.memberId);case _CreateClass() when createClass != null:
return createClass(_that.name,_that.description,_that.trainerId,_that.maxCapacity,_that.startTime,_that.endTime,_that.type);case _UpdateClass() when updateClass != null:
return updateClass(_that.id,_that.name,_that.description,_that.maxCapacity,_that.startTime,_that.endTime,_that.status,_that.type);case _DeleteClass() when deleteClass != null:
return deleteClass(_that.id);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements ClassEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ClassEvent.started()';
}


}




/// @nodoc


class _BookClass implements ClassEvent {
  const _BookClass(this.classId, this.memberId);
  

 final  String classId;
 final  String memberId;

/// Create a copy of ClassEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BookClassCopyWith<_BookClass> get copyWith => __$BookClassCopyWithImpl<_BookClass>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BookClass&&(identical(other.classId, classId) || other.classId == classId)&&(identical(other.memberId, memberId) || other.memberId == memberId));
}


@override
int get hashCode => Object.hash(runtimeType,classId,memberId);

@override
String toString() {
  return 'ClassEvent.bookClass(classId: $classId, memberId: $memberId)';
}


}

/// @nodoc
abstract mixin class _$BookClassCopyWith<$Res> implements $ClassEventCopyWith<$Res> {
  factory _$BookClassCopyWith(_BookClass value, $Res Function(_BookClass) _then) = __$BookClassCopyWithImpl;
@useResult
$Res call({
 String classId, String memberId
});




}
/// @nodoc
class __$BookClassCopyWithImpl<$Res>
    implements _$BookClassCopyWith<$Res> {
  __$BookClassCopyWithImpl(this._self, this._then);

  final _BookClass _self;
  final $Res Function(_BookClass) _then;

/// Create a copy of ClassEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? classId = null,Object? memberId = null,}) {
  return _then(_BookClass(
null == classId ? _self.classId : classId // ignore: cast_nullable_to_non_nullable
as String,null == memberId ? _self.memberId : memberId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _JoinWaitlist implements ClassEvent {
  const _JoinWaitlist(this.classId, this.memberId);
  

 final  String classId;
 final  String memberId;

/// Create a copy of ClassEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$JoinWaitlistCopyWith<_JoinWaitlist> get copyWith => __$JoinWaitlistCopyWithImpl<_JoinWaitlist>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _JoinWaitlist&&(identical(other.classId, classId) || other.classId == classId)&&(identical(other.memberId, memberId) || other.memberId == memberId));
}


@override
int get hashCode => Object.hash(runtimeType,classId,memberId);

@override
String toString() {
  return 'ClassEvent.joinWaitlist(classId: $classId, memberId: $memberId)';
}


}

/// @nodoc
abstract mixin class _$JoinWaitlistCopyWith<$Res> implements $ClassEventCopyWith<$Res> {
  factory _$JoinWaitlistCopyWith(_JoinWaitlist value, $Res Function(_JoinWaitlist) _then) = __$JoinWaitlistCopyWithImpl;
@useResult
$Res call({
 String classId, String memberId
});




}
/// @nodoc
class __$JoinWaitlistCopyWithImpl<$Res>
    implements _$JoinWaitlistCopyWith<$Res> {
  __$JoinWaitlistCopyWithImpl(this._self, this._then);

  final _JoinWaitlist _self;
  final $Res Function(_JoinWaitlist) _then;

/// Create a copy of ClassEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? classId = null,Object? memberId = null,}) {
  return _then(_JoinWaitlist(
null == classId ? _self.classId : classId // ignore: cast_nullable_to_non_nullable
as String,null == memberId ? _self.memberId : memberId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _CreateClass implements ClassEvent {
  const _CreateClass({required this.name, required this.description, required this.trainerId, required this.maxCapacity, required this.startTime, required this.endTime, required this.type});
  

 final  String name;
 final  String description;
 final  String trainerId;
 final  int maxCapacity;
 final  DateTime startTime;
 final  DateTime endTime;
 final  String type;

/// Create a copy of ClassEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateClassCopyWith<_CreateClass> get copyWith => __$CreateClassCopyWithImpl<_CreateClass>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateClass&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.trainerId, trainerId) || other.trainerId == trainerId)&&(identical(other.maxCapacity, maxCapacity) || other.maxCapacity == maxCapacity)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.endTime, endTime) || other.endTime == endTime)&&(identical(other.type, type) || other.type == type));
}


@override
int get hashCode => Object.hash(runtimeType,name,description,trainerId,maxCapacity,startTime,endTime,type);

@override
String toString() {
  return 'ClassEvent.createClass(name: $name, description: $description, trainerId: $trainerId, maxCapacity: $maxCapacity, startTime: $startTime, endTime: $endTime, type: $type)';
}


}

/// @nodoc
abstract mixin class _$CreateClassCopyWith<$Res> implements $ClassEventCopyWith<$Res> {
  factory _$CreateClassCopyWith(_CreateClass value, $Res Function(_CreateClass) _then) = __$CreateClassCopyWithImpl;
@useResult
$Res call({
 String name, String description, String trainerId, int maxCapacity, DateTime startTime, DateTime endTime, String type
});




}
/// @nodoc
class __$CreateClassCopyWithImpl<$Res>
    implements _$CreateClassCopyWith<$Res> {
  __$CreateClassCopyWithImpl(this._self, this._then);

  final _CreateClass _self;
  final $Res Function(_CreateClass) _then;

/// Create a copy of ClassEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? name = null,Object? description = null,Object? trainerId = null,Object? maxCapacity = null,Object? startTime = null,Object? endTime = null,Object? type = null,}) {
  return _then(_CreateClass(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,trainerId: null == trainerId ? _self.trainerId : trainerId // ignore: cast_nullable_to_non_nullable
as String,maxCapacity: null == maxCapacity ? _self.maxCapacity : maxCapacity // ignore: cast_nullable_to_non_nullable
as int,startTime: null == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as DateTime,endTime: null == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as DateTime,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _UpdateClass implements ClassEvent {
  const _UpdateClass({required this.id, this.name, this.description, this.maxCapacity, this.startTime, this.endTime, this.status, this.type});
  

 final  String id;
 final  String? name;
 final  String? description;
 final  int? maxCapacity;
 final  DateTime? startTime;
 final  DateTime? endTime;
 final  String? status;
 final  String? type;

/// Create a copy of ClassEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateClassCopyWith<_UpdateClass> get copyWith => __$UpdateClassCopyWithImpl<_UpdateClass>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateClass&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.maxCapacity, maxCapacity) || other.maxCapacity == maxCapacity)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.endTime, endTime) || other.endTime == endTime)&&(identical(other.status, status) || other.status == status)&&(identical(other.type, type) || other.type == type));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,description,maxCapacity,startTime,endTime,status,type);

@override
String toString() {
  return 'ClassEvent.updateClass(id: $id, name: $name, description: $description, maxCapacity: $maxCapacity, startTime: $startTime, endTime: $endTime, status: $status, type: $type)';
}


}

/// @nodoc
abstract mixin class _$UpdateClassCopyWith<$Res> implements $ClassEventCopyWith<$Res> {
  factory _$UpdateClassCopyWith(_UpdateClass value, $Res Function(_UpdateClass) _then) = __$UpdateClassCopyWithImpl;
@useResult
$Res call({
 String id, String? name, String? description, int? maxCapacity, DateTime? startTime, DateTime? endTime, String? status, String? type
});




}
/// @nodoc
class __$UpdateClassCopyWithImpl<$Res>
    implements _$UpdateClassCopyWith<$Res> {
  __$UpdateClassCopyWithImpl(this._self, this._then);

  final _UpdateClass _self;
  final $Res Function(_UpdateClass) _then;

/// Create a copy of ClassEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = freezed,Object? description = freezed,Object? maxCapacity = freezed,Object? startTime = freezed,Object? endTime = freezed,Object? status = freezed,Object? type = freezed,}) {
  return _then(_UpdateClass(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,maxCapacity: freezed == maxCapacity ? _self.maxCapacity : maxCapacity // ignore: cast_nullable_to_non_nullable
as int?,startTime: freezed == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as DateTime?,endTime: freezed == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as DateTime?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _DeleteClass implements ClassEvent {
  const _DeleteClass(this.id);
  

 final  String id;

/// Create a copy of ClassEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeleteClassCopyWith<_DeleteClass> get copyWith => __$DeleteClassCopyWithImpl<_DeleteClass>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteClass&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'ClassEvent.deleteClass(id: $id)';
}


}

/// @nodoc
abstract mixin class _$DeleteClassCopyWith<$Res> implements $ClassEventCopyWith<$Res> {
  factory _$DeleteClassCopyWith(_DeleteClass value, $Res Function(_DeleteClass) _then) = __$DeleteClassCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class __$DeleteClassCopyWithImpl<$Res>
    implements _$DeleteClassCopyWith<$Res> {
  __$DeleteClassCopyWithImpl(this._self, this._then);

  final _DeleteClass _self;
  final $Res Function(_DeleteClass) _then;

/// Create a copy of ClassEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_DeleteClass(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
