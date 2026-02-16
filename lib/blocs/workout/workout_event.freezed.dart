// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'workout_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$WorkoutEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WorkoutEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WorkoutEvent()';
}


}

/// @nodoc
class $WorkoutEventCopyWith<$Res>  {
$WorkoutEventCopyWith(WorkoutEvent _, $Res Function(WorkoutEvent) __);
}


/// Adds pattern-matching-related methods to [WorkoutEvent].
extension WorkoutEventPatterns on WorkoutEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _FetchPlans value)?  fetchPlans,TResult Function( _LogWorkout value)?  logWorkout,TResult Function( _CreatePlan value)?  createPlan,TResult Function( _FetchExercises value)?  fetchExercises,TResult Function( _DeletePlan value)?  deletePlan,TResult Function( _UpdatePlan value)?  updatePlan,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FetchPlans() when fetchPlans != null:
return fetchPlans(_that);case _LogWorkout() when logWorkout != null:
return logWorkout(_that);case _CreatePlan() when createPlan != null:
return createPlan(_that);case _FetchExercises() when fetchExercises != null:
return fetchExercises(_that);case _DeletePlan() when deletePlan != null:
return deletePlan(_that);case _UpdatePlan() when updatePlan != null:
return updatePlan(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _FetchPlans value)  fetchPlans,required TResult Function( _LogWorkout value)  logWorkout,required TResult Function( _CreatePlan value)  createPlan,required TResult Function( _FetchExercises value)  fetchExercises,required TResult Function( _DeletePlan value)  deletePlan,required TResult Function( _UpdatePlan value)  updatePlan,}){
final _that = this;
switch (_that) {
case _FetchPlans():
return fetchPlans(_that);case _LogWorkout():
return logWorkout(_that);case _CreatePlan():
return createPlan(_that);case _FetchExercises():
return fetchExercises(_that);case _DeletePlan():
return deletePlan(_that);case _UpdatePlan():
return updatePlan(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _FetchPlans value)?  fetchPlans,TResult? Function( _LogWorkout value)?  logWorkout,TResult? Function( _CreatePlan value)?  createPlan,TResult? Function( _FetchExercises value)?  fetchExercises,TResult? Function( _DeletePlan value)?  deletePlan,TResult? Function( _UpdatePlan value)?  updatePlan,}){
final _that = this;
switch (_that) {
case _FetchPlans() when fetchPlans != null:
return fetchPlans(_that);case _LogWorkout() when logWorkout != null:
return logWorkout(_that);case _CreatePlan() when createPlan != null:
return createPlan(_that);case _FetchExercises() when fetchExercises != null:
return fetchExercises(_that);case _DeletePlan() when deletePlan != null:
return deletePlan(_that);case _UpdatePlan() when updatePlan != null:
return updatePlan(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String? memberId,  String? trainerId,  String? userId,  bool isTemplate)?  fetchPlans,TResult Function( WorkoutLogModel log)?  logWorkout,TResult Function( WorkoutPlanModel plan)?  createPlan,TResult Function()?  fetchExercises,TResult Function( String planId)?  deletePlan,TResult Function( WorkoutPlanModel plan)?  updatePlan,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FetchPlans() when fetchPlans != null:
return fetchPlans(_that.memberId,_that.trainerId,_that.userId,_that.isTemplate);case _LogWorkout() when logWorkout != null:
return logWorkout(_that.log);case _CreatePlan() when createPlan != null:
return createPlan(_that.plan);case _FetchExercises() when fetchExercises != null:
return fetchExercises();case _DeletePlan() when deletePlan != null:
return deletePlan(_that.planId);case _UpdatePlan() when updatePlan != null:
return updatePlan(_that.plan);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String? memberId,  String? trainerId,  String? userId,  bool isTemplate)  fetchPlans,required TResult Function( WorkoutLogModel log)  logWorkout,required TResult Function( WorkoutPlanModel plan)  createPlan,required TResult Function()  fetchExercises,required TResult Function( String planId)  deletePlan,required TResult Function( WorkoutPlanModel plan)  updatePlan,}) {final _that = this;
switch (_that) {
case _FetchPlans():
return fetchPlans(_that.memberId,_that.trainerId,_that.userId,_that.isTemplate);case _LogWorkout():
return logWorkout(_that.log);case _CreatePlan():
return createPlan(_that.plan);case _FetchExercises():
return fetchExercises();case _DeletePlan():
return deletePlan(_that.planId);case _UpdatePlan():
return updatePlan(_that.plan);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String? memberId,  String? trainerId,  String? userId,  bool isTemplate)?  fetchPlans,TResult? Function( WorkoutLogModel log)?  logWorkout,TResult? Function( WorkoutPlanModel plan)?  createPlan,TResult? Function()?  fetchExercises,TResult? Function( String planId)?  deletePlan,TResult? Function( WorkoutPlanModel plan)?  updatePlan,}) {final _that = this;
switch (_that) {
case _FetchPlans() when fetchPlans != null:
return fetchPlans(_that.memberId,_that.trainerId,_that.userId,_that.isTemplate);case _LogWorkout() when logWorkout != null:
return logWorkout(_that.log);case _CreatePlan() when createPlan != null:
return createPlan(_that.plan);case _FetchExercises() when fetchExercises != null:
return fetchExercises();case _DeletePlan() when deletePlan != null:
return deletePlan(_that.planId);case _UpdatePlan() when updatePlan != null:
return updatePlan(_that.plan);case _:
  return null;

}
}

}

/// @nodoc


class _FetchPlans implements WorkoutEvent {
  const _FetchPlans({this.memberId, this.trainerId, this.userId, this.isTemplate = false});
  

 final  String? memberId;
 final  String? trainerId;
 final  String? userId;
@JsonKey() final  bool isTemplate;

/// Create a copy of WorkoutEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FetchPlansCopyWith<_FetchPlans> get copyWith => __$FetchPlansCopyWithImpl<_FetchPlans>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FetchPlans&&(identical(other.memberId, memberId) || other.memberId == memberId)&&(identical(other.trainerId, trainerId) || other.trainerId == trainerId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.isTemplate, isTemplate) || other.isTemplate == isTemplate));
}


@override
int get hashCode => Object.hash(runtimeType,memberId,trainerId,userId,isTemplate);

@override
String toString() {
  return 'WorkoutEvent.fetchPlans(memberId: $memberId, trainerId: $trainerId, userId: $userId, isTemplate: $isTemplate)';
}


}

/// @nodoc
abstract mixin class _$FetchPlansCopyWith<$Res> implements $WorkoutEventCopyWith<$Res> {
  factory _$FetchPlansCopyWith(_FetchPlans value, $Res Function(_FetchPlans) _then) = __$FetchPlansCopyWithImpl;
@useResult
$Res call({
 String? memberId, String? trainerId, String? userId, bool isTemplate
});




}
/// @nodoc
class __$FetchPlansCopyWithImpl<$Res>
    implements _$FetchPlansCopyWith<$Res> {
  __$FetchPlansCopyWithImpl(this._self, this._then);

  final _FetchPlans _self;
  final $Res Function(_FetchPlans) _then;

/// Create a copy of WorkoutEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? memberId = freezed,Object? trainerId = freezed,Object? userId = freezed,Object? isTemplate = null,}) {
  return _then(_FetchPlans(
memberId: freezed == memberId ? _self.memberId : memberId // ignore: cast_nullable_to_non_nullable
as String?,trainerId: freezed == trainerId ? _self.trainerId : trainerId // ignore: cast_nullable_to_non_nullable
as String?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,isTemplate: null == isTemplate ? _self.isTemplate : isTemplate // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _LogWorkout implements WorkoutEvent {
  const _LogWorkout(this.log);
  

 final  WorkoutLogModel log;

/// Create a copy of WorkoutEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LogWorkoutCopyWith<_LogWorkout> get copyWith => __$LogWorkoutCopyWithImpl<_LogWorkout>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LogWorkout&&(identical(other.log, log) || other.log == log));
}


@override
int get hashCode => Object.hash(runtimeType,log);

@override
String toString() {
  return 'WorkoutEvent.logWorkout(log: $log)';
}


}

/// @nodoc
abstract mixin class _$LogWorkoutCopyWith<$Res> implements $WorkoutEventCopyWith<$Res> {
  factory _$LogWorkoutCopyWith(_LogWorkout value, $Res Function(_LogWorkout) _then) = __$LogWorkoutCopyWithImpl;
@useResult
$Res call({
 WorkoutLogModel log
});


$WorkoutLogModelCopyWith<$Res> get log;

}
/// @nodoc
class __$LogWorkoutCopyWithImpl<$Res>
    implements _$LogWorkoutCopyWith<$Res> {
  __$LogWorkoutCopyWithImpl(this._self, this._then);

  final _LogWorkout _self;
  final $Res Function(_LogWorkout) _then;

/// Create a copy of WorkoutEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? log = null,}) {
  return _then(_LogWorkout(
null == log ? _self.log : log // ignore: cast_nullable_to_non_nullable
as WorkoutLogModel,
  ));
}

/// Create a copy of WorkoutEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WorkoutLogModelCopyWith<$Res> get log {
  
  return $WorkoutLogModelCopyWith<$Res>(_self.log, (value) {
    return _then(_self.copyWith(log: value));
  });
}
}

/// @nodoc


class _CreatePlan implements WorkoutEvent {
  const _CreatePlan(this.plan);
  

 final  WorkoutPlanModel plan;

/// Create a copy of WorkoutEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreatePlanCopyWith<_CreatePlan> get copyWith => __$CreatePlanCopyWithImpl<_CreatePlan>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreatePlan&&(identical(other.plan, plan) || other.plan == plan));
}


@override
int get hashCode => Object.hash(runtimeType,plan);

@override
String toString() {
  return 'WorkoutEvent.createPlan(plan: $plan)';
}


}

/// @nodoc
abstract mixin class _$CreatePlanCopyWith<$Res> implements $WorkoutEventCopyWith<$Res> {
  factory _$CreatePlanCopyWith(_CreatePlan value, $Res Function(_CreatePlan) _then) = __$CreatePlanCopyWithImpl;
@useResult
$Res call({
 WorkoutPlanModel plan
});


$WorkoutPlanModelCopyWith<$Res> get plan;

}
/// @nodoc
class __$CreatePlanCopyWithImpl<$Res>
    implements _$CreatePlanCopyWith<$Res> {
  __$CreatePlanCopyWithImpl(this._self, this._then);

  final _CreatePlan _self;
  final $Res Function(_CreatePlan) _then;

/// Create a copy of WorkoutEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? plan = null,}) {
  return _then(_CreatePlan(
null == plan ? _self.plan : plan // ignore: cast_nullable_to_non_nullable
as WorkoutPlanModel,
  ));
}

/// Create a copy of WorkoutEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WorkoutPlanModelCopyWith<$Res> get plan {
  
  return $WorkoutPlanModelCopyWith<$Res>(_self.plan, (value) {
    return _then(_self.copyWith(plan: value));
  });
}
}

/// @nodoc


class _FetchExercises implements WorkoutEvent {
  const _FetchExercises();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FetchExercises);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WorkoutEvent.fetchExercises()';
}


}




/// @nodoc


class _DeletePlan implements WorkoutEvent {
  const _DeletePlan(this.planId);
  

 final  String planId;

/// Create a copy of WorkoutEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeletePlanCopyWith<_DeletePlan> get copyWith => __$DeletePlanCopyWithImpl<_DeletePlan>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeletePlan&&(identical(other.planId, planId) || other.planId == planId));
}


@override
int get hashCode => Object.hash(runtimeType,planId);

@override
String toString() {
  return 'WorkoutEvent.deletePlan(planId: $planId)';
}


}

/// @nodoc
abstract mixin class _$DeletePlanCopyWith<$Res> implements $WorkoutEventCopyWith<$Res> {
  factory _$DeletePlanCopyWith(_DeletePlan value, $Res Function(_DeletePlan) _then) = __$DeletePlanCopyWithImpl;
@useResult
$Res call({
 String planId
});




}
/// @nodoc
class __$DeletePlanCopyWithImpl<$Res>
    implements _$DeletePlanCopyWith<$Res> {
  __$DeletePlanCopyWithImpl(this._self, this._then);

  final _DeletePlan _self;
  final $Res Function(_DeletePlan) _then;

/// Create a copy of WorkoutEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? planId = null,}) {
  return _then(_DeletePlan(
null == planId ? _self.planId : planId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _UpdatePlan implements WorkoutEvent {
  const _UpdatePlan(this.plan);
  

 final  WorkoutPlanModel plan;

/// Create a copy of WorkoutEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdatePlanCopyWith<_UpdatePlan> get copyWith => __$UpdatePlanCopyWithImpl<_UpdatePlan>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdatePlan&&(identical(other.plan, plan) || other.plan == plan));
}


@override
int get hashCode => Object.hash(runtimeType,plan);

@override
String toString() {
  return 'WorkoutEvent.updatePlan(plan: $plan)';
}


}

/// @nodoc
abstract mixin class _$UpdatePlanCopyWith<$Res> implements $WorkoutEventCopyWith<$Res> {
  factory _$UpdatePlanCopyWith(_UpdatePlan value, $Res Function(_UpdatePlan) _then) = __$UpdatePlanCopyWithImpl;
@useResult
$Res call({
 WorkoutPlanModel plan
});


$WorkoutPlanModelCopyWith<$Res> get plan;

}
/// @nodoc
class __$UpdatePlanCopyWithImpl<$Res>
    implements _$UpdatePlanCopyWith<$Res> {
  __$UpdatePlanCopyWithImpl(this._self, this._then);

  final _UpdatePlan _self;
  final $Res Function(_UpdatePlan) _then;

/// Create a copy of WorkoutEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? plan = null,}) {
  return _then(_UpdatePlan(
null == plan ? _self.plan : plan // ignore: cast_nullable_to_non_nullable
as WorkoutPlanModel,
  ));
}

/// Create a copy of WorkoutEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WorkoutPlanModelCopyWith<$Res> get plan {
  
  return $WorkoutPlanModelCopyWith<$Res>(_self.plan, (value) {
    return _then(_self.copyWith(plan: value));
  });
}
}

// dart format on
