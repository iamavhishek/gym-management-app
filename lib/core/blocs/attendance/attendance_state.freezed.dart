// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attendance_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AttendanceState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AttendanceState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AttendanceState()';
}


}

/// @nodoc
class $AttendanceStateCopyWith<$Res>  {
$AttendanceStateCopyWith(AttendanceState _, $Res Function(AttendanceState) __);
}


/// Adds pattern-matching-related methods to [AttendanceState].
extension AttendanceStatePatterns on AttendanceState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( AttendanceInitial value)?  initial,TResult Function( AttendanceLoading value)?  loading,TResult Function( AttendanceLoaded value)?  loaded,TResult Function( AttendanceSuccess value)?  success,TResult Function( AttendanceError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case AttendanceInitial() when initial != null:
return initial(_that);case AttendanceLoading() when loading != null:
return loading(_that);case AttendanceLoaded() when loaded != null:
return loaded(_that);case AttendanceSuccess() when success != null:
return success(_that);case AttendanceError() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( AttendanceInitial value)  initial,required TResult Function( AttendanceLoading value)  loading,required TResult Function( AttendanceLoaded value)  loaded,required TResult Function( AttendanceSuccess value)  success,required TResult Function( AttendanceError value)  error,}){
final _that = this;
switch (_that) {
case AttendanceInitial():
return initial(_that);case AttendanceLoading():
return loading(_that);case AttendanceLoaded():
return loaded(_that);case AttendanceSuccess():
return success(_that);case AttendanceError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( AttendanceInitial value)?  initial,TResult? Function( AttendanceLoading value)?  loading,TResult? Function( AttendanceLoaded value)?  loaded,TResult? Function( AttendanceSuccess value)?  success,TResult? Function( AttendanceError value)?  error,}){
final _that = this;
switch (_that) {
case AttendanceInitial() when initial != null:
return initial(_that);case AttendanceLoading() when loading != null:
return loading(_that);case AttendanceLoaded() when loaded != null:
return loaded(_that);case AttendanceSuccess() when success != null:
return success(_that);case AttendanceError() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<AttendanceModel> history)?  loaded,TResult Function( String message)?  success,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case AttendanceInitial() when initial != null:
return initial();case AttendanceLoading() when loading != null:
return loading();case AttendanceLoaded() when loaded != null:
return loaded(_that.history);case AttendanceSuccess() when success != null:
return success(_that.message);case AttendanceError() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<AttendanceModel> history)  loaded,required TResult Function( String message)  success,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case AttendanceInitial():
return initial();case AttendanceLoading():
return loading();case AttendanceLoaded():
return loaded(_that.history);case AttendanceSuccess():
return success(_that.message);case AttendanceError():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<AttendanceModel> history)?  loaded,TResult? Function( String message)?  success,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case AttendanceInitial() when initial != null:
return initial();case AttendanceLoading() when loading != null:
return loading();case AttendanceLoaded() when loaded != null:
return loaded(_that.history);case AttendanceSuccess() when success != null:
return success(_that.message);case AttendanceError() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class AttendanceInitial implements AttendanceState {
  const AttendanceInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AttendanceInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AttendanceState.initial()';
}


}




/// @nodoc


class AttendanceLoading implements AttendanceState {
  const AttendanceLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AttendanceLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AttendanceState.loading()';
}


}




/// @nodoc


class AttendanceLoaded implements AttendanceState {
  const AttendanceLoaded(final  List<AttendanceModel> history): _history = history;
  

 final  List<AttendanceModel> _history;
 List<AttendanceModel> get history {
  if (_history is EqualUnmodifiableListView) return _history;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_history);
}


/// Create a copy of AttendanceState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AttendanceLoadedCopyWith<AttendanceLoaded> get copyWith => _$AttendanceLoadedCopyWithImpl<AttendanceLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AttendanceLoaded&&const DeepCollectionEquality().equals(other._history, _history));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_history));

@override
String toString() {
  return 'AttendanceState.loaded(history: $history)';
}


}

/// @nodoc
abstract mixin class $AttendanceLoadedCopyWith<$Res> implements $AttendanceStateCopyWith<$Res> {
  factory $AttendanceLoadedCopyWith(AttendanceLoaded value, $Res Function(AttendanceLoaded) _then) = _$AttendanceLoadedCopyWithImpl;
@useResult
$Res call({
 List<AttendanceModel> history
});




}
/// @nodoc
class _$AttendanceLoadedCopyWithImpl<$Res>
    implements $AttendanceLoadedCopyWith<$Res> {
  _$AttendanceLoadedCopyWithImpl(this._self, this._then);

  final AttendanceLoaded _self;
  final $Res Function(AttendanceLoaded) _then;

/// Create a copy of AttendanceState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? history = null,}) {
  return _then(AttendanceLoaded(
null == history ? _self._history : history // ignore: cast_nullable_to_non_nullable
as List<AttendanceModel>,
  ));
}


}

/// @nodoc


class AttendanceSuccess implements AttendanceState {
  const AttendanceSuccess(this.message);
  

 final  String message;

/// Create a copy of AttendanceState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AttendanceSuccessCopyWith<AttendanceSuccess> get copyWith => _$AttendanceSuccessCopyWithImpl<AttendanceSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AttendanceSuccess&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AttendanceState.success(message: $message)';
}


}

/// @nodoc
abstract mixin class $AttendanceSuccessCopyWith<$Res> implements $AttendanceStateCopyWith<$Res> {
  factory $AttendanceSuccessCopyWith(AttendanceSuccess value, $Res Function(AttendanceSuccess) _then) = _$AttendanceSuccessCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$AttendanceSuccessCopyWithImpl<$Res>
    implements $AttendanceSuccessCopyWith<$Res> {
  _$AttendanceSuccessCopyWithImpl(this._self, this._then);

  final AttendanceSuccess _self;
  final $Res Function(AttendanceSuccess) _then;

/// Create a copy of AttendanceState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(AttendanceSuccess(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class AttendanceError implements AttendanceState {
  const AttendanceError(this.message);
  

 final  String message;

/// Create a copy of AttendanceState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AttendanceErrorCopyWith<AttendanceError> get copyWith => _$AttendanceErrorCopyWithImpl<AttendanceError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AttendanceError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AttendanceState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $AttendanceErrorCopyWith<$Res> implements $AttendanceStateCopyWith<$Res> {
  factory $AttendanceErrorCopyWith(AttendanceError value, $Res Function(AttendanceError) _then) = _$AttendanceErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$AttendanceErrorCopyWithImpl<$Res>
    implements $AttendanceErrorCopyWith<$Res> {
  _$AttendanceErrorCopyWithImpl(this._self, this._then);

  final AttendanceError _self;
  final $Res Function(AttendanceError) _then;

/// Create a copy of AttendanceState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(AttendanceError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
