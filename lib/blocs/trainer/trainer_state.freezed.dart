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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Loading value)?  loading,TResult Function( _Loaded value)?  loaded,TResult Function( _TrainerLoaded value)?  trainerLoaded,TResult Function( _DashboardLoaded value)?  dashboardLoaded,TResult Function( _Success value)?  success,TResult Function( _Error value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Loaded() when loaded != null:
return loaded(_that);case _TrainerLoaded() when trainerLoaded != null:
return trainerLoaded(_that);case _DashboardLoaded() when dashboardLoaded != null:
return dashboardLoaded(_that);case _Success() when success != null:
return success(_that);case _Error() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Loading value)  loading,required TResult Function( _Loaded value)  loaded,required TResult Function( _TrainerLoaded value)  trainerLoaded,required TResult Function( _DashboardLoaded value)  dashboardLoaded,required TResult Function( _Success value)  success,required TResult Function( _Error value)  error,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Loading():
return loading(_that);case _Loaded():
return loaded(_that);case _TrainerLoaded():
return trainerLoaded(_that);case _DashboardLoaded():
return dashboardLoaded(_that);case _Success():
return success(_that);case _Error():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Loading value)?  loading,TResult? Function( _Loaded value)?  loaded,TResult? Function( _TrainerLoaded value)?  trainerLoaded,TResult? Function( _DashboardLoaded value)?  dashboardLoaded,TResult? Function( _Success value)?  success,TResult? Function( _Error value)?  error,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Loaded() when loaded != null:
return loaded(_that);case _TrainerLoaded() when trainerLoaded != null:
return trainerLoaded(_that);case _DashboardLoaded() when dashboardLoaded != null:
return dashboardLoaded(_that);case _Success() when success != null:
return success(_that);case _Error() when error != null:
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
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Loaded() when loaded != null:
return loaded(_that.trainers);case _TrainerLoaded() when trainerLoaded != null:
return trainerLoaded(_that.trainer);case _DashboardLoaded() when dashboardLoaded != null:
return dashboardLoaded(_that.data);case _Success() when success != null:
return success(_that.message);case _Error() when error != null:
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
case _Initial():
return initial();case _Loading():
return loading();case _Loaded():
return loaded(_that.trainers);case _TrainerLoaded():
return trainerLoaded(_that.trainer);case _DashboardLoaded():
return dashboardLoaded(_that.data);case _Success():
return success(_that.message);case _Error():
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
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Loaded() when loaded != null:
return loaded(_that.trainers);case _TrainerLoaded() when trainerLoaded != null:
return trainerLoaded(_that.trainer);case _DashboardLoaded() when dashboardLoaded != null:
return dashboardLoaded(_that.data);case _Success() when success != null:
return success(_that.message);case _Error() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements TrainerState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TrainerState.initial()';
}


}




/// @nodoc


class _Loading implements TrainerState {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TrainerState.loading()';
}


}




/// @nodoc


class _Loaded implements TrainerState {
  const _Loaded(final  List<TrainerModel> trainers): _trainers = trainers;
  

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
_$LoadedCopyWith<_Loaded> get copyWith => __$LoadedCopyWithImpl<_Loaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loaded&&const DeepCollectionEquality().equals(other._trainers, _trainers));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_trainers));

@override
String toString() {
  return 'TrainerState.loaded(trainers: $trainers)';
}


}

/// @nodoc
abstract mixin class _$LoadedCopyWith<$Res> implements $TrainerStateCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) _then) = __$LoadedCopyWithImpl;
@useResult
$Res call({
 List<TrainerModel> trainers
});




}
/// @nodoc
class __$LoadedCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(this._self, this._then);

  final _Loaded _self;
  final $Res Function(_Loaded) _then;

/// Create a copy of TrainerState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? trainers = null,}) {
  return _then(_Loaded(
null == trainers ? _self._trainers : trainers // ignore: cast_nullable_to_non_nullable
as List<TrainerModel>,
  ));
}


}

/// @nodoc


class _TrainerLoaded implements TrainerState {
  const _TrainerLoaded(this.trainer);
  

 final  TrainerModel trainer;

/// Create a copy of TrainerState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TrainerLoadedCopyWith<_TrainerLoaded> get copyWith => __$TrainerLoadedCopyWithImpl<_TrainerLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TrainerLoaded&&(identical(other.trainer, trainer) || other.trainer == trainer));
}


@override
int get hashCode => Object.hash(runtimeType,trainer);

@override
String toString() {
  return 'TrainerState.trainerLoaded(trainer: $trainer)';
}


}

/// @nodoc
abstract mixin class _$TrainerLoadedCopyWith<$Res> implements $TrainerStateCopyWith<$Res> {
  factory _$TrainerLoadedCopyWith(_TrainerLoaded value, $Res Function(_TrainerLoaded) _then) = __$TrainerLoadedCopyWithImpl;
@useResult
$Res call({
 TrainerModel trainer
});


$TrainerModelCopyWith<$Res> get trainer;

}
/// @nodoc
class __$TrainerLoadedCopyWithImpl<$Res>
    implements _$TrainerLoadedCopyWith<$Res> {
  __$TrainerLoadedCopyWithImpl(this._self, this._then);

  final _TrainerLoaded _self;
  final $Res Function(_TrainerLoaded) _then;

/// Create a copy of TrainerState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? trainer = null,}) {
  return _then(_TrainerLoaded(
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


class _DashboardLoaded implements TrainerState {
  const _DashboardLoaded(final  Map<String, dynamic> data): _data = data;
  

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
_$DashboardLoadedCopyWith<_DashboardLoaded> get copyWith => __$DashboardLoadedCopyWithImpl<_DashboardLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DashboardLoaded&&const DeepCollectionEquality().equals(other._data, _data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'TrainerState.dashboardLoaded(data: $data)';
}


}

/// @nodoc
abstract mixin class _$DashboardLoadedCopyWith<$Res> implements $TrainerStateCopyWith<$Res> {
  factory _$DashboardLoadedCopyWith(_DashboardLoaded value, $Res Function(_DashboardLoaded) _then) = __$DashboardLoadedCopyWithImpl;
@useResult
$Res call({
 Map<String, dynamic> data
});




}
/// @nodoc
class __$DashboardLoadedCopyWithImpl<$Res>
    implements _$DashboardLoadedCopyWith<$Res> {
  __$DashboardLoadedCopyWithImpl(this._self, this._then);

  final _DashboardLoaded _self;
  final $Res Function(_DashboardLoaded) _then;

/// Create a copy of TrainerState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(_DashboardLoaded(
null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}

/// @nodoc


class _Success implements TrainerState {
  const _Success(this.message);
  

 final  String message;

/// Create a copy of TrainerState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SuccessCopyWith<_Success> get copyWith => __$SuccessCopyWithImpl<_Success>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Success&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'TrainerState.success(message: $message)';
}


}

/// @nodoc
abstract mixin class _$SuccessCopyWith<$Res> implements $TrainerStateCopyWith<$Res> {
  factory _$SuccessCopyWith(_Success value, $Res Function(_Success) _then) = __$SuccessCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$SuccessCopyWithImpl<$Res>
    implements _$SuccessCopyWith<$Res> {
  __$SuccessCopyWithImpl(this._self, this._then);

  final _Success _self;
  final $Res Function(_Success) _then;

/// Create a copy of TrainerState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_Success(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _Error implements TrainerState {
  const _Error(this.message);
  

 final  String message;

/// Create a copy of TrainerState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorCopyWith<_Error> get copyWith => __$ErrorCopyWithImpl<_Error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Error&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'TrainerState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorCopyWith<$Res> implements $TrainerStateCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) _then) = __$ErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$ErrorCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(this._self, this._then);

  final _Error _self;
  final $Res Function(_Error) _then;

/// Create a copy of TrainerState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_Error(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
