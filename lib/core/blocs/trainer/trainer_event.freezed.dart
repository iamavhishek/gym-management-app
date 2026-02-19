// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trainer_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TrainerEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TrainerEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TrainerEvent()';
}


}

/// @nodoc
class $TrainerEventCopyWith<$Res>  {
$TrainerEventCopyWith(TrainerEvent _, $Res Function(TrainerEvent) __);
}


/// Adds pattern-matching-related methods to [TrainerEvent].
extension TrainerEventPatterns on TrainerEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _FetchTrainers value)?  fetchTrainers,TResult Function( _FetchTrainerDetails value)?  fetchTrainerDetails,TResult Function( _CreateTrainer value)?  createTrainer,TResult Function( _UpdateTrainer value)?  updateTrainer,TResult Function( _FetchDashboard value)?  fetchDashboard,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FetchTrainers() when fetchTrainers != null:
return fetchTrainers(_that);case _FetchTrainerDetails() when fetchTrainerDetails != null:
return fetchTrainerDetails(_that);case _CreateTrainer() when createTrainer != null:
return createTrainer(_that);case _UpdateTrainer() when updateTrainer != null:
return updateTrainer(_that);case _FetchDashboard() when fetchDashboard != null:
return fetchDashboard(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _FetchTrainers value)  fetchTrainers,required TResult Function( _FetchTrainerDetails value)  fetchTrainerDetails,required TResult Function( _CreateTrainer value)  createTrainer,required TResult Function( _UpdateTrainer value)  updateTrainer,required TResult Function( _FetchDashboard value)  fetchDashboard,}){
final _that = this;
switch (_that) {
case _FetchTrainers():
return fetchTrainers(_that);case _FetchTrainerDetails():
return fetchTrainerDetails(_that);case _CreateTrainer():
return createTrainer(_that);case _UpdateTrainer():
return updateTrainer(_that);case _FetchDashboard():
return fetchDashboard(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _FetchTrainers value)?  fetchTrainers,TResult? Function( _FetchTrainerDetails value)?  fetchTrainerDetails,TResult? Function( _CreateTrainer value)?  createTrainer,TResult? Function( _UpdateTrainer value)?  updateTrainer,TResult? Function( _FetchDashboard value)?  fetchDashboard,}){
final _that = this;
switch (_that) {
case _FetchTrainers() when fetchTrainers != null:
return fetchTrainers(_that);case _FetchTrainerDetails() when fetchTrainerDetails != null:
return fetchTrainerDetails(_that);case _CreateTrainer() when createTrainer != null:
return createTrainer(_that);case _UpdateTrainer() when updateTrainer != null:
return updateTrainer(_that);case _FetchDashboard() when fetchDashboard != null:
return fetchDashboard(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  fetchTrainers,TResult Function( String id)?  fetchTrainerDetails,TResult Function( Map<String, dynamic> data)?  createTrainer,TResult Function( String id,  Map<String, dynamic> data)?  updateTrainer,TResult Function()?  fetchDashboard,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FetchTrainers() when fetchTrainers != null:
return fetchTrainers();case _FetchTrainerDetails() when fetchTrainerDetails != null:
return fetchTrainerDetails(_that.id);case _CreateTrainer() when createTrainer != null:
return createTrainer(_that.data);case _UpdateTrainer() when updateTrainer != null:
return updateTrainer(_that.id,_that.data);case _FetchDashboard() when fetchDashboard != null:
return fetchDashboard();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  fetchTrainers,required TResult Function( String id)  fetchTrainerDetails,required TResult Function( Map<String, dynamic> data)  createTrainer,required TResult Function( String id,  Map<String, dynamic> data)  updateTrainer,required TResult Function()  fetchDashboard,}) {final _that = this;
switch (_that) {
case _FetchTrainers():
return fetchTrainers();case _FetchTrainerDetails():
return fetchTrainerDetails(_that.id);case _CreateTrainer():
return createTrainer(_that.data);case _UpdateTrainer():
return updateTrainer(_that.id,_that.data);case _FetchDashboard():
return fetchDashboard();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  fetchTrainers,TResult? Function( String id)?  fetchTrainerDetails,TResult? Function( Map<String, dynamic> data)?  createTrainer,TResult? Function( String id,  Map<String, dynamic> data)?  updateTrainer,TResult? Function()?  fetchDashboard,}) {final _that = this;
switch (_that) {
case _FetchTrainers() when fetchTrainers != null:
return fetchTrainers();case _FetchTrainerDetails() when fetchTrainerDetails != null:
return fetchTrainerDetails(_that.id);case _CreateTrainer() when createTrainer != null:
return createTrainer(_that.data);case _UpdateTrainer() when updateTrainer != null:
return updateTrainer(_that.id,_that.data);case _FetchDashboard() when fetchDashboard != null:
return fetchDashboard();case _:
  return null;

}
}

}

/// @nodoc


class _FetchTrainers implements TrainerEvent {
  const _FetchTrainers();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FetchTrainers);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TrainerEvent.fetchTrainers()';
}


}




/// @nodoc


class _FetchTrainerDetails implements TrainerEvent {
  const _FetchTrainerDetails(this.id);
  

 final  String id;

/// Create a copy of TrainerEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FetchTrainerDetailsCopyWith<_FetchTrainerDetails> get copyWith => __$FetchTrainerDetailsCopyWithImpl<_FetchTrainerDetails>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FetchTrainerDetails&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'TrainerEvent.fetchTrainerDetails(id: $id)';
}


}

/// @nodoc
abstract mixin class _$FetchTrainerDetailsCopyWith<$Res> implements $TrainerEventCopyWith<$Res> {
  factory _$FetchTrainerDetailsCopyWith(_FetchTrainerDetails value, $Res Function(_FetchTrainerDetails) _then) = __$FetchTrainerDetailsCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class __$FetchTrainerDetailsCopyWithImpl<$Res>
    implements _$FetchTrainerDetailsCopyWith<$Res> {
  __$FetchTrainerDetailsCopyWithImpl(this._self, this._then);

  final _FetchTrainerDetails _self;
  final $Res Function(_FetchTrainerDetails) _then;

/// Create a copy of TrainerEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_FetchTrainerDetails(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _CreateTrainer implements TrainerEvent {
  const _CreateTrainer(final  Map<String, dynamic> data): _data = data;
  

 final  Map<String, dynamic> _data;
 Map<String, dynamic> get data {
  if (_data is EqualUnmodifiableMapView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_data);
}


/// Create a copy of TrainerEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateTrainerCopyWith<_CreateTrainer> get copyWith => __$CreateTrainerCopyWithImpl<_CreateTrainer>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateTrainer&&const DeepCollectionEquality().equals(other._data, _data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'TrainerEvent.createTrainer(data: $data)';
}


}

/// @nodoc
abstract mixin class _$CreateTrainerCopyWith<$Res> implements $TrainerEventCopyWith<$Res> {
  factory _$CreateTrainerCopyWith(_CreateTrainer value, $Res Function(_CreateTrainer) _then) = __$CreateTrainerCopyWithImpl;
@useResult
$Res call({
 Map<String, dynamic> data
});




}
/// @nodoc
class __$CreateTrainerCopyWithImpl<$Res>
    implements _$CreateTrainerCopyWith<$Res> {
  __$CreateTrainerCopyWithImpl(this._self, this._then);

  final _CreateTrainer _self;
  final $Res Function(_CreateTrainer) _then;

/// Create a copy of TrainerEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(_CreateTrainer(
null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}

/// @nodoc


class _UpdateTrainer implements TrainerEvent {
  const _UpdateTrainer(this.id, final  Map<String, dynamic> data): _data = data;
  

 final  String id;
 final  Map<String, dynamic> _data;
 Map<String, dynamic> get data {
  if (_data is EqualUnmodifiableMapView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_data);
}


/// Create a copy of TrainerEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateTrainerCopyWith<_UpdateTrainer> get copyWith => __$UpdateTrainerCopyWithImpl<_UpdateTrainer>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateTrainer&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other._data, _data));
}


@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'TrainerEvent.updateTrainer(id: $id, data: $data)';
}


}

/// @nodoc
abstract mixin class _$UpdateTrainerCopyWith<$Res> implements $TrainerEventCopyWith<$Res> {
  factory _$UpdateTrainerCopyWith(_UpdateTrainer value, $Res Function(_UpdateTrainer) _then) = __$UpdateTrainerCopyWithImpl;
@useResult
$Res call({
 String id, Map<String, dynamic> data
});




}
/// @nodoc
class __$UpdateTrainerCopyWithImpl<$Res>
    implements _$UpdateTrainerCopyWith<$Res> {
  __$UpdateTrainerCopyWithImpl(this._self, this._then);

  final _UpdateTrainer _self;
  final $Res Function(_UpdateTrainer) _then;

/// Create a copy of TrainerEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,Object? data = null,}) {
  return _then(_UpdateTrainer(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}

/// @nodoc


class _FetchDashboard implements TrainerEvent {
  const _FetchDashboard();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FetchDashboard);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TrainerEvent.fetchDashboard()';
}


}




// dart format on
