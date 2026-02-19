// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trainer_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TrainerState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TrainerState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TrainerState()';
}


}

/// @nodoc
class $TrainerStateCopyWith<$Res>  {
$TrainerStateCopyWith(TrainerState _, $Res Function(TrainerState) __);
}


/// Adds pattern-matching-related methods to [TrainerState].
extension TrainerStatePatterns on TrainerState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( TrainerInitial value)?  initial,TResult Function( TrainerLoading value)?  loading,TResult Function( TrainerLoaded value)?  loaded,TResult Function( TrainerDetailLoaded value)?  trainerLoaded,TResult Function( TrainerDashboardLoaded value)?  dashboardLoaded,TResult Function( TrainerSuccess value)?  success,TResult Function( TrainerError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case TrainerInitial() when initial != null:
return initial(_that);case TrainerLoading() when loading != null:
return loading(_that);case TrainerLoaded() when loaded != null:
return loaded(_that);case TrainerDetailLoaded() when trainerLoaded != null:
return trainerLoaded(_that);case TrainerDashboardLoaded() when dashboardLoaded != null:
return dashboardLoaded(_that);case TrainerSuccess() when success != null:
return success(_that);case TrainerError() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( TrainerInitial value)  initial,required TResult Function( TrainerLoading value)  loading,required TResult Function( TrainerLoaded value)  loaded,required TResult Function( TrainerDetailLoaded value)  trainerLoaded,required TResult Function( TrainerDashboardLoaded value)  dashboardLoaded,required TResult Function( TrainerSuccess value)  success,required TResult Function( TrainerError value)  error,}){
final _that = this;
switch (_that) {
case TrainerInitial():
return initial(_that);case TrainerLoading():
return loading(_that);case TrainerLoaded():
return loaded(_that);case TrainerDetailLoaded():
return trainerLoaded(_that);case TrainerDashboardLoaded():
return dashboardLoaded(_that);case TrainerSuccess():
return success(_that);case TrainerError():
return error(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( TrainerInitial value)?  initial,TResult? Function( TrainerLoading value)?  loading,TResult? Function( TrainerLoaded value)?  loaded,TResult? Function( TrainerDetailLoaded value)?  trainerLoaded,TResult? Function( TrainerDashboardLoaded value)?  dashboardLoaded,TResult? Function( TrainerSuccess value)?  success,TResult? Function( TrainerError value)?  error,}){
final _that = this;
switch (_that) {
case TrainerInitial() when initial != null:
return initial(_that);case TrainerLoading() when loading != null:
return loading(_that);case TrainerLoaded() when loaded != null:
return loaded(_that);case TrainerDetailLoaded() when trainerLoaded != null:
return trainerLoaded(_that);case TrainerDashboardLoaded() when dashboardLoaded != null:
return dashboardLoaded(_that);case TrainerSuccess() when success != null:
return success(_that);case TrainerError() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<TrainerModel> trainers)?  loaded,TResult Function( TrainerModel trainer)?  trainerLoaded,TResult Function( Map<String, dynamic> data)?  dashboardLoaded,TResult Function( String message)?  success,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case TrainerInitial() when initial != null:
return initial();case TrainerLoading() when loading != null:
return loading();case TrainerLoaded() when loaded != null:
return loaded(_that.trainers);case TrainerDetailLoaded() when trainerLoaded != null:
return trainerLoaded(_that.trainer);case TrainerDashboardLoaded() when dashboardLoaded != null:
return dashboardLoaded(_that.data);case TrainerSuccess() when success != null:
return success(_that.message);case TrainerError() when error != null:
return error(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<TrainerModel> trainers)  loaded,required TResult Function( TrainerModel trainer)  trainerLoaded,required TResult Function( Map<String, dynamic> data)  dashboardLoaded,required TResult Function( String message)  success,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case TrainerInitial():
return initial();case TrainerLoading():
return loading();case TrainerLoaded():
return loaded(_that.trainers);case TrainerDetailLoaded():
return trainerLoaded(_that.trainer);case TrainerDashboardLoaded():
return dashboardLoaded(_that.data);case TrainerSuccess():
return success(_that.message);case TrainerError():
return error(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<TrainerModel> trainers)?  loaded,TResult? Function( TrainerModel trainer)?  trainerLoaded,TResult? Function( Map<String, dynamic> data)?  dashboardLoaded,TResult? Function( String message)?  success,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case TrainerInitial() when initial != null:
return initial();case TrainerLoading() when loading != null:
return loading();case TrainerLoaded() when loaded != null:
return loaded(_that.trainers);case TrainerDetailLoaded() when trainerLoaded != null:
return trainerLoaded(_that.trainer);case TrainerDashboardLoaded() when dashboardLoaded != null:
return dashboardLoaded(_that.data);case TrainerSuccess() when success != null:
return success(_that.message);case TrainerError() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class TrainerInitial implements TrainerState {
  const TrainerInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TrainerInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TrainerState.initial()';
}


}




/// @nodoc


class TrainerLoading implements TrainerState {
  const TrainerLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TrainerLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TrainerState.loading()';
}


}




/// @nodoc


class TrainerLoaded implements TrainerState {
  const TrainerLoaded(final  List<TrainerModel> trainers): _trainers = trainers;
  

 final  List<TrainerModel> _trainers;
 List<TrainerModel> get trainers {
  if (_trainers is EqualUnmodifiableListView) return _trainers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_trainers);
}


/// Create a copy of TrainerState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TrainerLoadedCopyWith<TrainerLoaded> get copyWith => _$TrainerLoadedCopyWithImpl<TrainerLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TrainerLoaded&&const DeepCollectionEquality().equals(other._trainers, _trainers));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_trainers));

@override
String toString() {
  return 'TrainerState.loaded(trainers: $trainers)';
}


}

/// @nodoc
abstract mixin class $TrainerLoadedCopyWith<$Res> implements $TrainerStateCopyWith<$Res> {
  factory $TrainerLoadedCopyWith(TrainerLoaded value, $Res Function(TrainerLoaded) _then) = _$TrainerLoadedCopyWithImpl;
@useResult
$Res call({
 List<TrainerModel> trainers
});




}
/// @nodoc
class _$TrainerLoadedCopyWithImpl<$Res>
    implements $TrainerLoadedCopyWith<$Res> {
  _$TrainerLoadedCopyWithImpl(this._self, this._then);

  final TrainerLoaded _self;
  final $Res Function(TrainerLoaded) _then;

/// Create a copy of TrainerState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? trainers = null,}) {
  return _then(TrainerLoaded(
null == trainers ? _self._trainers : trainers // ignore: cast_nullable_to_non_nullable
as List<TrainerModel>,
  ));
}


}

/// @nodoc


class TrainerDetailLoaded implements TrainerState {
  const TrainerDetailLoaded(this.trainer);
  

 final  TrainerModel trainer;

/// Create a copy of TrainerState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TrainerDetailLoadedCopyWith<TrainerDetailLoaded> get copyWith => _$TrainerDetailLoadedCopyWithImpl<TrainerDetailLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TrainerDetailLoaded&&(identical(other.trainer, trainer) || other.trainer == trainer));
}


@override
int get hashCode => Object.hash(runtimeType,trainer);

@override
String toString() {
  return 'TrainerState.trainerLoaded(trainer: $trainer)';
}


}

/// @nodoc
abstract mixin class $TrainerDetailLoadedCopyWith<$Res> implements $TrainerStateCopyWith<$Res> {
  factory $TrainerDetailLoadedCopyWith(TrainerDetailLoaded value, $Res Function(TrainerDetailLoaded) _then) = _$TrainerDetailLoadedCopyWithImpl;
@useResult
$Res call({
 TrainerModel trainer
});


$TrainerModelCopyWith<$Res> get trainer;

}
/// @nodoc
class _$TrainerDetailLoadedCopyWithImpl<$Res>
    implements $TrainerDetailLoadedCopyWith<$Res> {
  _$TrainerDetailLoadedCopyWithImpl(this._self, this._then);

  final TrainerDetailLoaded _self;
  final $Res Function(TrainerDetailLoaded) _then;

/// Create a copy of TrainerState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? trainer = null,}) {
  return _then(TrainerDetailLoaded(
null == trainer ? _self.trainer : trainer // ignore: cast_nullable_to_non_nullable
as TrainerModel,
  ));
}

/// Create a copy of TrainerState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TrainerModelCopyWith<$Res> get trainer {
  
  return $TrainerModelCopyWith<$Res>(_self.trainer, (value) {
    return _then(_self.copyWith(trainer: value));
  });
}
}

/// @nodoc


class TrainerDashboardLoaded implements TrainerState {
  const TrainerDashboardLoaded(final  Map<String, dynamic> data): _data = data;
  

 final  Map<String, dynamic> _data;
 Map<String, dynamic> get data {
  if (_data is EqualUnmodifiableMapView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_data);
}


/// Create a copy of TrainerState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TrainerDashboardLoadedCopyWith<TrainerDashboardLoaded> get copyWith => _$TrainerDashboardLoadedCopyWithImpl<TrainerDashboardLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TrainerDashboardLoaded&&const DeepCollectionEquality().equals(other._data, _data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'TrainerState.dashboardLoaded(data: $data)';
}


}

/// @nodoc
abstract mixin class $TrainerDashboardLoadedCopyWith<$Res> implements $TrainerStateCopyWith<$Res> {
  factory $TrainerDashboardLoadedCopyWith(TrainerDashboardLoaded value, $Res Function(TrainerDashboardLoaded) _then) = _$TrainerDashboardLoadedCopyWithImpl;
@useResult
$Res call({
 Map<String, dynamic> data
});




}
/// @nodoc
class _$TrainerDashboardLoadedCopyWithImpl<$Res>
    implements $TrainerDashboardLoadedCopyWith<$Res> {
  _$TrainerDashboardLoadedCopyWithImpl(this._self, this._then);

  final TrainerDashboardLoaded _self;
  final $Res Function(TrainerDashboardLoaded) _then;

/// Create a copy of TrainerState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(TrainerDashboardLoaded(
null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}

/// @nodoc


class TrainerSuccess implements TrainerState {
  const TrainerSuccess(this.message);
  

 final  String message;

/// Create a copy of TrainerState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TrainerSuccessCopyWith<TrainerSuccess> get copyWith => _$TrainerSuccessCopyWithImpl<TrainerSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TrainerSuccess&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'TrainerState.success(message: $message)';
}


}

/// @nodoc
abstract mixin class $TrainerSuccessCopyWith<$Res> implements $TrainerStateCopyWith<$Res> {
  factory $TrainerSuccessCopyWith(TrainerSuccess value, $Res Function(TrainerSuccess) _then) = _$TrainerSuccessCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$TrainerSuccessCopyWithImpl<$Res>
    implements $TrainerSuccessCopyWith<$Res> {
  _$TrainerSuccessCopyWithImpl(this._self, this._then);

  final TrainerSuccess _self;
  final $Res Function(TrainerSuccess) _then;

/// Create a copy of TrainerState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(TrainerSuccess(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class TrainerError implements TrainerState {
  const TrainerError(this.message);
  

 final  String message;

/// Create a copy of TrainerState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TrainerErrorCopyWith<TrainerError> get copyWith => _$TrainerErrorCopyWithImpl<TrainerError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TrainerError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'TrainerState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $TrainerErrorCopyWith<$Res> implements $TrainerStateCopyWith<$Res> {
  factory $TrainerErrorCopyWith(TrainerError value, $Res Function(TrainerError) _then) = _$TrainerErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$TrainerErrorCopyWithImpl<$Res>
    implements $TrainerErrorCopyWith<$Res> {
  _$TrainerErrorCopyWithImpl(this._self, this._then);

  final TrainerError _self;
  final $Res Function(TrainerError) _then;

/// Create a copy of TrainerState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(TrainerError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
