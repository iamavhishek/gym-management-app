// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'plans_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PlansEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlansEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PlansEvent()';
}


}

/// @nodoc
class $PlansEventCopyWith<$Res>  {
$PlansEventCopyWith(PlansEvent _, $Res Function(PlansEvent) __);
}


/// Adds pattern-matching-related methods to [PlansEvent].
extension PlansEventPatterns on PlansEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _CreatePlan value)?  createPlan,TResult Function( _UpdatePlan value)?  updatePlan,TResult Function( _DeletePlan value)?  deletePlan,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _CreatePlan() when createPlan != null:
return createPlan(_that);case _UpdatePlan() when updatePlan != null:
return updatePlan(_that);case _DeletePlan() when deletePlan != null:
return deletePlan(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _CreatePlan value)  createPlan,required TResult Function( _UpdatePlan value)  updatePlan,required TResult Function( _DeletePlan value)  deletePlan,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _CreatePlan():
return createPlan(_that);case _UpdatePlan():
return updatePlan(_that);case _DeletePlan():
return deletePlan(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _CreatePlan value)?  createPlan,TResult? Function( _UpdatePlan value)?  updatePlan,TResult? Function( _DeletePlan value)?  deletePlan,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _CreatePlan() when createPlan != null:
return createPlan(_that);case _UpdatePlan() when updatePlan != null:
return updatePlan(_that);case _DeletePlan() when deletePlan != null:
return deletePlan(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( String name,  String description,  String price,  int duration,  String type,  bool isActive,  List<String> features)?  createPlan,TResult Function( String id,  String name,  String description,  String price,  int duration,  String type,  bool isActive,  List<String> features)?  updatePlan,TResult Function( String id)?  deletePlan,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _CreatePlan() when createPlan != null:
return createPlan(_that.name,_that.description,_that.price,_that.duration,_that.type,_that.isActive,_that.features);case _UpdatePlan() when updatePlan != null:
return updatePlan(_that.id,_that.name,_that.description,_that.price,_that.duration,_that.type,_that.isActive,_that.features);case _DeletePlan() when deletePlan != null:
return deletePlan(_that.id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( String name,  String description,  String price,  int duration,  String type,  bool isActive,  List<String> features)  createPlan,required TResult Function( String id,  String name,  String description,  String price,  int duration,  String type,  bool isActive,  List<String> features)  updatePlan,required TResult Function( String id)  deletePlan,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _CreatePlan():
return createPlan(_that.name,_that.description,_that.price,_that.duration,_that.type,_that.isActive,_that.features);case _UpdatePlan():
return updatePlan(_that.id,_that.name,_that.description,_that.price,_that.duration,_that.type,_that.isActive,_that.features);case _DeletePlan():
return deletePlan(_that.id);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( String name,  String description,  String price,  int duration,  String type,  bool isActive,  List<String> features)?  createPlan,TResult? Function( String id,  String name,  String description,  String price,  int duration,  String type,  bool isActive,  List<String> features)?  updatePlan,TResult? Function( String id)?  deletePlan,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _CreatePlan() when createPlan != null:
return createPlan(_that.name,_that.description,_that.price,_that.duration,_that.type,_that.isActive,_that.features);case _UpdatePlan() when updatePlan != null:
return updatePlan(_that.id,_that.name,_that.description,_that.price,_that.duration,_that.type,_that.isActive,_that.features);case _DeletePlan() when deletePlan != null:
return deletePlan(_that.id);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements PlansEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PlansEvent.started()';
}


}




/// @nodoc


class _CreatePlan implements PlansEvent {
  const _CreatePlan({required this.name, required this.description, required this.price, required this.duration, required this.type, this.isActive = true, final  List<String> features = const []}): _features = features;
  

 final  String name;
 final  String description;
 final  String price;
 final  int duration;
 final  String type;
@JsonKey() final  bool isActive;
 final  List<String> _features;
@JsonKey() List<String> get features {
  if (_features is EqualUnmodifiableListView) return _features;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_features);
}


/// Create a copy of PlansEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreatePlanCopyWith<_CreatePlan> get copyWith => __$CreatePlanCopyWithImpl<_CreatePlan>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreatePlan&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.price, price) || other.price == price)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.type, type) || other.type == type)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&const DeepCollectionEquality().equals(other._features, _features));
}


@override
int get hashCode => Object.hash(runtimeType,name,description,price,duration,type,isActive,const DeepCollectionEquality().hash(_features));

@override
String toString() {
  return 'PlansEvent.createPlan(name: $name, description: $description, price: $price, duration: $duration, type: $type, isActive: $isActive, features: $features)';
}


}

/// @nodoc
abstract mixin class _$CreatePlanCopyWith<$Res> implements $PlansEventCopyWith<$Res> {
  factory _$CreatePlanCopyWith(_CreatePlan value, $Res Function(_CreatePlan) _then) = __$CreatePlanCopyWithImpl;
@useResult
$Res call({
 String name, String description, String price, int duration, String type, bool isActive, List<String> features
});




}
/// @nodoc
class __$CreatePlanCopyWithImpl<$Res>
    implements _$CreatePlanCopyWith<$Res> {
  __$CreatePlanCopyWithImpl(this._self, this._then);

  final _CreatePlan _self;
  final $Res Function(_CreatePlan) _then;

/// Create a copy of PlansEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? name = null,Object? description = null,Object? price = null,Object? duration = null,Object? type = null,Object? isActive = null,Object? features = null,}) {
  return _then(_CreatePlan(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,features: null == features ? _self._features : features // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

/// @nodoc


class _UpdatePlan implements PlansEvent {
  const _UpdatePlan({required this.id, required this.name, required this.description, required this.price, required this.duration, required this.type, required this.isActive, required final  List<String> features}): _features = features;
  

 final  String id;
 final  String name;
 final  String description;
 final  String price;
 final  int duration;
 final  String type;
 final  bool isActive;
 final  List<String> _features;
 List<String> get features {
  if (_features is EqualUnmodifiableListView) return _features;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_features);
}


/// Create a copy of PlansEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdatePlanCopyWith<_UpdatePlan> get copyWith => __$UpdatePlanCopyWithImpl<_UpdatePlan>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdatePlan&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.price, price) || other.price == price)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.type, type) || other.type == type)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&const DeepCollectionEquality().equals(other._features, _features));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,description,price,duration,type,isActive,const DeepCollectionEquality().hash(_features));

@override
String toString() {
  return 'PlansEvent.updatePlan(id: $id, name: $name, description: $description, price: $price, duration: $duration, type: $type, isActive: $isActive, features: $features)';
}


}

/// @nodoc
abstract mixin class _$UpdatePlanCopyWith<$Res> implements $PlansEventCopyWith<$Res> {
  factory _$UpdatePlanCopyWith(_UpdatePlan value, $Res Function(_UpdatePlan) _then) = __$UpdatePlanCopyWithImpl;
@useResult
$Res call({
 String id, String name, String description, String price, int duration, String type, bool isActive, List<String> features
});




}
/// @nodoc
class __$UpdatePlanCopyWithImpl<$Res>
    implements _$UpdatePlanCopyWith<$Res> {
  __$UpdatePlanCopyWithImpl(this._self, this._then);

  final _UpdatePlan _self;
  final $Res Function(_UpdatePlan) _then;

/// Create a copy of PlansEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? description = null,Object? price = null,Object? duration = null,Object? type = null,Object? isActive = null,Object? features = null,}) {
  return _then(_UpdatePlan(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,features: null == features ? _self._features : features // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

/// @nodoc


class _DeletePlan implements PlansEvent {
  const _DeletePlan(this.id);
  

 final  String id;

/// Create a copy of PlansEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeletePlanCopyWith<_DeletePlan> get copyWith => __$DeletePlanCopyWithImpl<_DeletePlan>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeletePlan&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'PlansEvent.deletePlan(id: $id)';
}


}

/// @nodoc
abstract mixin class _$DeletePlanCopyWith<$Res> implements $PlansEventCopyWith<$Res> {
  factory _$DeletePlanCopyWith(_DeletePlan value, $Res Function(_DeletePlan) _then) = __$DeletePlanCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class __$DeletePlanCopyWithImpl<$Res>
    implements _$DeletePlanCopyWith<$Res> {
  __$DeletePlanCopyWithImpl(this._self, this._then);

  final _DeletePlan _self;
  final $Res Function(_DeletePlan) _then;

/// Create a copy of PlansEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_DeletePlan(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
