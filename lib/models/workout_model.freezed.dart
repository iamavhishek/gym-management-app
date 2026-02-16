// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'workout_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WorkoutExerciseModel {

 String get id; String get name; String? get category; String? get muscleGroup; String? get description; String? get imageUrl; String? get videoUrl; String? get equipmentRequired; String? get difficultyLevel; String? get instructions; int? get caloriesBurned;
/// Create a copy of WorkoutExerciseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WorkoutExerciseModelCopyWith<WorkoutExerciseModel> get copyWith => _$WorkoutExerciseModelCopyWithImpl<WorkoutExerciseModel>(this as WorkoutExerciseModel, _$identity);

  /// Serializes this WorkoutExerciseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WorkoutExerciseModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.category, category) || other.category == category)&&(identical(other.muscleGroup, muscleGroup) || other.muscleGroup == muscleGroup)&&(identical(other.description, description) || other.description == description)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.videoUrl, videoUrl) || other.videoUrl == videoUrl)&&(identical(other.equipmentRequired, equipmentRequired) || other.equipmentRequired == equipmentRequired)&&(identical(other.difficultyLevel, difficultyLevel) || other.difficultyLevel == difficultyLevel)&&(identical(other.instructions, instructions) || other.instructions == instructions)&&(identical(other.caloriesBurned, caloriesBurned) || other.caloriesBurned == caloriesBurned));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,category,muscleGroup,description,imageUrl,videoUrl,equipmentRequired,difficultyLevel,instructions,caloriesBurned);

@override
String toString() {
  return 'WorkoutExerciseModel(id: $id, name: $name, category: $category, muscleGroup: $muscleGroup, description: $description, imageUrl: $imageUrl, videoUrl: $videoUrl, equipmentRequired: $equipmentRequired, difficultyLevel: $difficultyLevel, instructions: $instructions, caloriesBurned: $caloriesBurned)';
}


}

/// @nodoc
abstract mixin class $WorkoutExerciseModelCopyWith<$Res>  {
  factory $WorkoutExerciseModelCopyWith(WorkoutExerciseModel value, $Res Function(WorkoutExerciseModel) _then) = _$WorkoutExerciseModelCopyWithImpl;
@useResult
$Res call({
 String id, String name, String? category, String? muscleGroup, String? description, String? imageUrl, String? videoUrl, String? equipmentRequired, String? difficultyLevel, String? instructions, int? caloriesBurned
});




}
/// @nodoc
class _$WorkoutExerciseModelCopyWithImpl<$Res>
    implements $WorkoutExerciseModelCopyWith<$Res> {
  _$WorkoutExerciseModelCopyWithImpl(this._self, this._then);

  final WorkoutExerciseModel _self;
  final $Res Function(WorkoutExerciseModel) _then;

/// Create a copy of WorkoutExerciseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? category = freezed,Object? muscleGroup = freezed,Object? description = freezed,Object? imageUrl = freezed,Object? videoUrl = freezed,Object? equipmentRequired = freezed,Object? difficultyLevel = freezed,Object? instructions = freezed,Object? caloriesBurned = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,muscleGroup: freezed == muscleGroup ? _self.muscleGroup : muscleGroup // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,videoUrl: freezed == videoUrl ? _self.videoUrl : videoUrl // ignore: cast_nullable_to_non_nullable
as String?,equipmentRequired: freezed == equipmentRequired ? _self.equipmentRequired : equipmentRequired // ignore: cast_nullable_to_non_nullable
as String?,difficultyLevel: freezed == difficultyLevel ? _self.difficultyLevel : difficultyLevel // ignore: cast_nullable_to_non_nullable
as String?,instructions: freezed == instructions ? _self.instructions : instructions // ignore: cast_nullable_to_non_nullable
as String?,caloriesBurned: freezed == caloriesBurned ? _self.caloriesBurned : caloriesBurned // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [WorkoutExerciseModel].
extension WorkoutExerciseModelPatterns on WorkoutExerciseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WorkoutExerciseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WorkoutExerciseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WorkoutExerciseModel value)  $default,){
final _that = this;
switch (_that) {
case _WorkoutExerciseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WorkoutExerciseModel value)?  $default,){
final _that = this;
switch (_that) {
case _WorkoutExerciseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String? category,  String? muscleGroup,  String? description,  String? imageUrl,  String? videoUrl,  String? equipmentRequired,  String? difficultyLevel,  String? instructions,  int? caloriesBurned)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WorkoutExerciseModel() when $default != null:
return $default(_that.id,_that.name,_that.category,_that.muscleGroup,_that.description,_that.imageUrl,_that.videoUrl,_that.equipmentRequired,_that.difficultyLevel,_that.instructions,_that.caloriesBurned);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String? category,  String? muscleGroup,  String? description,  String? imageUrl,  String? videoUrl,  String? equipmentRequired,  String? difficultyLevel,  String? instructions,  int? caloriesBurned)  $default,) {final _that = this;
switch (_that) {
case _WorkoutExerciseModel():
return $default(_that.id,_that.name,_that.category,_that.muscleGroup,_that.description,_that.imageUrl,_that.videoUrl,_that.equipmentRequired,_that.difficultyLevel,_that.instructions,_that.caloriesBurned);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String? category,  String? muscleGroup,  String? description,  String? imageUrl,  String? videoUrl,  String? equipmentRequired,  String? difficultyLevel,  String? instructions,  int? caloriesBurned)?  $default,) {final _that = this;
switch (_that) {
case _WorkoutExerciseModel() when $default != null:
return $default(_that.id,_that.name,_that.category,_that.muscleGroup,_that.description,_that.imageUrl,_that.videoUrl,_that.equipmentRequired,_that.difficultyLevel,_that.instructions,_that.caloriesBurned);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WorkoutExerciseModel implements WorkoutExerciseModel {
  const _WorkoutExerciseModel({required this.id, required this.name, this.category, this.muscleGroup, this.description, this.imageUrl, this.videoUrl, this.equipmentRequired, this.difficultyLevel, this.instructions, this.caloriesBurned});
  factory _WorkoutExerciseModel.fromJson(Map<String, dynamic> json) => _$WorkoutExerciseModelFromJson(json);

@override final  String id;
@override final  String name;
@override final  String? category;
@override final  String? muscleGroup;
@override final  String? description;
@override final  String? imageUrl;
@override final  String? videoUrl;
@override final  String? equipmentRequired;
@override final  String? difficultyLevel;
@override final  String? instructions;
@override final  int? caloriesBurned;

/// Create a copy of WorkoutExerciseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WorkoutExerciseModelCopyWith<_WorkoutExerciseModel> get copyWith => __$WorkoutExerciseModelCopyWithImpl<_WorkoutExerciseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WorkoutExerciseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WorkoutExerciseModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.category, category) || other.category == category)&&(identical(other.muscleGroup, muscleGroup) || other.muscleGroup == muscleGroup)&&(identical(other.description, description) || other.description == description)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.videoUrl, videoUrl) || other.videoUrl == videoUrl)&&(identical(other.equipmentRequired, equipmentRequired) || other.equipmentRequired == equipmentRequired)&&(identical(other.difficultyLevel, difficultyLevel) || other.difficultyLevel == difficultyLevel)&&(identical(other.instructions, instructions) || other.instructions == instructions)&&(identical(other.caloriesBurned, caloriesBurned) || other.caloriesBurned == caloriesBurned));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,category,muscleGroup,description,imageUrl,videoUrl,equipmentRequired,difficultyLevel,instructions,caloriesBurned);

@override
String toString() {
  return 'WorkoutExerciseModel(id: $id, name: $name, category: $category, muscleGroup: $muscleGroup, description: $description, imageUrl: $imageUrl, videoUrl: $videoUrl, equipmentRequired: $equipmentRequired, difficultyLevel: $difficultyLevel, instructions: $instructions, caloriesBurned: $caloriesBurned)';
}


}

/// @nodoc
abstract mixin class _$WorkoutExerciseModelCopyWith<$Res> implements $WorkoutExerciseModelCopyWith<$Res> {
  factory _$WorkoutExerciseModelCopyWith(_WorkoutExerciseModel value, $Res Function(_WorkoutExerciseModel) _then) = __$WorkoutExerciseModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String? category, String? muscleGroup, String? description, String? imageUrl, String? videoUrl, String? equipmentRequired, String? difficultyLevel, String? instructions, int? caloriesBurned
});




}
/// @nodoc
class __$WorkoutExerciseModelCopyWithImpl<$Res>
    implements _$WorkoutExerciseModelCopyWith<$Res> {
  __$WorkoutExerciseModelCopyWithImpl(this._self, this._then);

  final _WorkoutExerciseModel _self;
  final $Res Function(_WorkoutExerciseModel) _then;

/// Create a copy of WorkoutExerciseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? category = freezed,Object? muscleGroup = freezed,Object? description = freezed,Object? imageUrl = freezed,Object? videoUrl = freezed,Object? equipmentRequired = freezed,Object? difficultyLevel = freezed,Object? instructions = freezed,Object? caloriesBurned = freezed,}) {
  return _then(_WorkoutExerciseModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,muscleGroup: freezed == muscleGroup ? _self.muscleGroup : muscleGroup // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,videoUrl: freezed == videoUrl ? _self.videoUrl : videoUrl // ignore: cast_nullable_to_non_nullable
as String?,equipmentRequired: freezed == equipmentRequired ? _self.equipmentRequired : equipmentRequired // ignore: cast_nullable_to_non_nullable
as String?,difficultyLevel: freezed == difficultyLevel ? _self.difficultyLevel : difficultyLevel // ignore: cast_nullable_to_non_nullable
as String?,instructions: freezed == instructions ? _self.instructions : instructions // ignore: cast_nullable_to_non_nullable
as String?,caloriesBurned: freezed == caloriesBurned ? _self.caloriesBurned : caloriesBurned // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$WorkoutPlanModel {

 String get id; String get name; String get description; String? get trainerId; String? get memberId; String? get startDate;// Backend returns date as string
 String? get endDate;// Backend returns date as string
 bool get isTemplate; bool get isActive; List<WorkoutSessionModel> get sessions; Map<String, dynamic>? get member; Map<String, dynamic>? get trainer;
/// Create a copy of WorkoutPlanModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WorkoutPlanModelCopyWith<WorkoutPlanModel> get copyWith => _$WorkoutPlanModelCopyWithImpl<WorkoutPlanModel>(this as WorkoutPlanModel, _$identity);

  /// Serializes this WorkoutPlanModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WorkoutPlanModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.trainerId, trainerId) || other.trainerId == trainerId)&&(identical(other.memberId, memberId) || other.memberId == memberId)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.isTemplate, isTemplate) || other.isTemplate == isTemplate)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&const DeepCollectionEquality().equals(other.sessions, sessions)&&const DeepCollectionEquality().equals(other.member, member)&&const DeepCollectionEquality().equals(other.trainer, trainer));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,trainerId,memberId,startDate,endDate,isTemplate,isActive,const DeepCollectionEquality().hash(sessions),const DeepCollectionEquality().hash(member),const DeepCollectionEquality().hash(trainer));

@override
String toString() {
  return 'WorkoutPlanModel(id: $id, name: $name, description: $description, trainerId: $trainerId, memberId: $memberId, startDate: $startDate, endDate: $endDate, isTemplate: $isTemplate, isActive: $isActive, sessions: $sessions, member: $member, trainer: $trainer)';
}


}

/// @nodoc
abstract mixin class $WorkoutPlanModelCopyWith<$Res>  {
  factory $WorkoutPlanModelCopyWith(WorkoutPlanModel value, $Res Function(WorkoutPlanModel) _then) = _$WorkoutPlanModelCopyWithImpl;
@useResult
$Res call({
 String id, String name, String description, String? trainerId, String? memberId, String? startDate, String? endDate, bool isTemplate, bool isActive, List<WorkoutSessionModel> sessions, Map<String, dynamic>? member, Map<String, dynamic>? trainer
});




}
/// @nodoc
class _$WorkoutPlanModelCopyWithImpl<$Res>
    implements $WorkoutPlanModelCopyWith<$Res> {
  _$WorkoutPlanModelCopyWithImpl(this._self, this._then);

  final WorkoutPlanModel _self;
  final $Res Function(WorkoutPlanModel) _then;

/// Create a copy of WorkoutPlanModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? description = null,Object? trainerId = freezed,Object? memberId = freezed,Object? startDate = freezed,Object? endDate = freezed,Object? isTemplate = null,Object? isActive = null,Object? sessions = null,Object? member = freezed,Object? trainer = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,trainerId: freezed == trainerId ? _self.trainerId : trainerId // ignore: cast_nullable_to_non_nullable
as String?,memberId: freezed == memberId ? _self.memberId : memberId // ignore: cast_nullable_to_non_nullable
as String?,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as String?,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as String?,isTemplate: null == isTemplate ? _self.isTemplate : isTemplate // ignore: cast_nullable_to_non_nullable
as bool,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,sessions: null == sessions ? _self.sessions : sessions // ignore: cast_nullable_to_non_nullable
as List<WorkoutSessionModel>,member: freezed == member ? _self.member : member // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,trainer: freezed == trainer ? _self.trainer : trainer // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}

}


/// Adds pattern-matching-related methods to [WorkoutPlanModel].
extension WorkoutPlanModelPatterns on WorkoutPlanModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WorkoutPlanModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WorkoutPlanModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WorkoutPlanModel value)  $default,){
final _that = this;
switch (_that) {
case _WorkoutPlanModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WorkoutPlanModel value)?  $default,){
final _that = this;
switch (_that) {
case _WorkoutPlanModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String description,  String? trainerId,  String? memberId,  String? startDate,  String? endDate,  bool isTemplate,  bool isActive,  List<WorkoutSessionModel> sessions,  Map<String, dynamic>? member,  Map<String, dynamic>? trainer)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WorkoutPlanModel() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.trainerId,_that.memberId,_that.startDate,_that.endDate,_that.isTemplate,_that.isActive,_that.sessions,_that.member,_that.trainer);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String description,  String? trainerId,  String? memberId,  String? startDate,  String? endDate,  bool isTemplate,  bool isActive,  List<WorkoutSessionModel> sessions,  Map<String, dynamic>? member,  Map<String, dynamic>? trainer)  $default,) {final _that = this;
switch (_that) {
case _WorkoutPlanModel():
return $default(_that.id,_that.name,_that.description,_that.trainerId,_that.memberId,_that.startDate,_that.endDate,_that.isTemplate,_that.isActive,_that.sessions,_that.member,_that.trainer);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String description,  String? trainerId,  String? memberId,  String? startDate,  String? endDate,  bool isTemplate,  bool isActive,  List<WorkoutSessionModel> sessions,  Map<String, dynamic>? member,  Map<String, dynamic>? trainer)?  $default,) {final _that = this;
switch (_that) {
case _WorkoutPlanModel() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.trainerId,_that.memberId,_that.startDate,_that.endDate,_that.isTemplate,_that.isActive,_that.sessions,_that.member,_that.trainer);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WorkoutPlanModel implements WorkoutPlanModel {
  const _WorkoutPlanModel({required this.id, required this.name, this.description = '', this.trainerId, this.memberId, this.startDate, this.endDate, this.isTemplate = false, this.isActive = true, final  List<WorkoutSessionModel> sessions = const [], final  Map<String, dynamic>? member, final  Map<String, dynamic>? trainer}): _sessions = sessions,_member = member,_trainer = trainer;
  factory _WorkoutPlanModel.fromJson(Map<String, dynamic> json) => _$WorkoutPlanModelFromJson(json);

@override final  String id;
@override final  String name;
@override@JsonKey() final  String description;
@override final  String? trainerId;
@override final  String? memberId;
@override final  String? startDate;
// Backend returns date as string
@override final  String? endDate;
// Backend returns date as string
@override@JsonKey() final  bool isTemplate;
@override@JsonKey() final  bool isActive;
 final  List<WorkoutSessionModel> _sessions;
@override@JsonKey() List<WorkoutSessionModel> get sessions {
  if (_sessions is EqualUnmodifiableListView) return _sessions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_sessions);
}

 final  Map<String, dynamic>? _member;
@override Map<String, dynamic>? get member {
  final value = _member;
  if (value == null) return null;
  if (_member is EqualUnmodifiableMapView) return _member;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

 final  Map<String, dynamic>? _trainer;
@override Map<String, dynamic>? get trainer {
  final value = _trainer;
  if (value == null) return null;
  if (_trainer is EqualUnmodifiableMapView) return _trainer;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of WorkoutPlanModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WorkoutPlanModelCopyWith<_WorkoutPlanModel> get copyWith => __$WorkoutPlanModelCopyWithImpl<_WorkoutPlanModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WorkoutPlanModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WorkoutPlanModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.trainerId, trainerId) || other.trainerId == trainerId)&&(identical(other.memberId, memberId) || other.memberId == memberId)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.isTemplate, isTemplate) || other.isTemplate == isTemplate)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&const DeepCollectionEquality().equals(other._sessions, _sessions)&&const DeepCollectionEquality().equals(other._member, _member)&&const DeepCollectionEquality().equals(other._trainer, _trainer));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,trainerId,memberId,startDate,endDate,isTemplate,isActive,const DeepCollectionEquality().hash(_sessions),const DeepCollectionEquality().hash(_member),const DeepCollectionEquality().hash(_trainer));

@override
String toString() {
  return 'WorkoutPlanModel(id: $id, name: $name, description: $description, trainerId: $trainerId, memberId: $memberId, startDate: $startDate, endDate: $endDate, isTemplate: $isTemplate, isActive: $isActive, sessions: $sessions, member: $member, trainer: $trainer)';
}


}

/// @nodoc
abstract mixin class _$WorkoutPlanModelCopyWith<$Res> implements $WorkoutPlanModelCopyWith<$Res> {
  factory _$WorkoutPlanModelCopyWith(_WorkoutPlanModel value, $Res Function(_WorkoutPlanModel) _then) = __$WorkoutPlanModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String description, String? trainerId, String? memberId, String? startDate, String? endDate, bool isTemplate, bool isActive, List<WorkoutSessionModel> sessions, Map<String, dynamic>? member, Map<String, dynamic>? trainer
});




}
/// @nodoc
class __$WorkoutPlanModelCopyWithImpl<$Res>
    implements _$WorkoutPlanModelCopyWith<$Res> {
  __$WorkoutPlanModelCopyWithImpl(this._self, this._then);

  final _WorkoutPlanModel _self;
  final $Res Function(_WorkoutPlanModel) _then;

/// Create a copy of WorkoutPlanModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? description = null,Object? trainerId = freezed,Object? memberId = freezed,Object? startDate = freezed,Object? endDate = freezed,Object? isTemplate = null,Object? isActive = null,Object? sessions = null,Object? member = freezed,Object? trainer = freezed,}) {
  return _then(_WorkoutPlanModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,trainerId: freezed == trainerId ? _self.trainerId : trainerId // ignore: cast_nullable_to_non_nullable
as String?,memberId: freezed == memberId ? _self.memberId : memberId // ignore: cast_nullable_to_non_nullable
as String?,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as String?,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as String?,isTemplate: null == isTemplate ? _self.isTemplate : isTemplate // ignore: cast_nullable_to_non_nullable
as bool,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,sessions: null == sessions ? _self._sessions : sessions // ignore: cast_nullable_to_non_nullable
as List<WorkoutSessionModel>,member: freezed == member ? _self._member : member // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,trainer: freezed == trainer ? _self._trainer : trainer // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}


}


/// @nodoc
mixin _$WorkoutSessionModel {

 String get id; String? get exerciseId; String? get workoutPlanId; WorkoutExerciseModel? get exercise; int get dayOfWeek;// 1-7 (Mon-Sun)
 int get order; int? get sets; int? get reps; int? get duration;// Seconds/Minutes
 String? get weight;// Backend stores as varchar (e.g., '10kg', 'bw')
 String? get notes;
/// Create a copy of WorkoutSessionModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WorkoutSessionModelCopyWith<WorkoutSessionModel> get copyWith => _$WorkoutSessionModelCopyWithImpl<WorkoutSessionModel>(this as WorkoutSessionModel, _$identity);

  /// Serializes this WorkoutSessionModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WorkoutSessionModel&&(identical(other.id, id) || other.id == id)&&(identical(other.exerciseId, exerciseId) || other.exerciseId == exerciseId)&&(identical(other.workoutPlanId, workoutPlanId) || other.workoutPlanId == workoutPlanId)&&(identical(other.exercise, exercise) || other.exercise == exercise)&&(identical(other.dayOfWeek, dayOfWeek) || other.dayOfWeek == dayOfWeek)&&(identical(other.order, order) || other.order == order)&&(identical(other.sets, sets) || other.sets == sets)&&(identical(other.reps, reps) || other.reps == reps)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.notes, notes) || other.notes == notes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,exerciseId,workoutPlanId,exercise,dayOfWeek,order,sets,reps,duration,weight,notes);

@override
String toString() {
  return 'WorkoutSessionModel(id: $id, exerciseId: $exerciseId, workoutPlanId: $workoutPlanId, exercise: $exercise, dayOfWeek: $dayOfWeek, order: $order, sets: $sets, reps: $reps, duration: $duration, weight: $weight, notes: $notes)';
}


}

/// @nodoc
abstract mixin class $WorkoutSessionModelCopyWith<$Res>  {
  factory $WorkoutSessionModelCopyWith(WorkoutSessionModel value, $Res Function(WorkoutSessionModel) _then) = _$WorkoutSessionModelCopyWithImpl;
@useResult
$Res call({
 String id, String? exerciseId, String? workoutPlanId, WorkoutExerciseModel? exercise, int dayOfWeek, int order, int? sets, int? reps, int? duration, String? weight, String? notes
});


$WorkoutExerciseModelCopyWith<$Res>? get exercise;

}
/// @nodoc
class _$WorkoutSessionModelCopyWithImpl<$Res>
    implements $WorkoutSessionModelCopyWith<$Res> {
  _$WorkoutSessionModelCopyWithImpl(this._self, this._then);

  final WorkoutSessionModel _self;
  final $Res Function(WorkoutSessionModel) _then;

/// Create a copy of WorkoutSessionModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? exerciseId = freezed,Object? workoutPlanId = freezed,Object? exercise = freezed,Object? dayOfWeek = null,Object? order = null,Object? sets = freezed,Object? reps = freezed,Object? duration = freezed,Object? weight = freezed,Object? notes = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,exerciseId: freezed == exerciseId ? _self.exerciseId : exerciseId // ignore: cast_nullable_to_non_nullable
as String?,workoutPlanId: freezed == workoutPlanId ? _self.workoutPlanId : workoutPlanId // ignore: cast_nullable_to_non_nullable
as String?,exercise: freezed == exercise ? _self.exercise : exercise // ignore: cast_nullable_to_non_nullable
as WorkoutExerciseModel?,dayOfWeek: null == dayOfWeek ? _self.dayOfWeek : dayOfWeek // ignore: cast_nullable_to_non_nullable
as int,order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int,sets: freezed == sets ? _self.sets : sets // ignore: cast_nullable_to_non_nullable
as int?,reps: freezed == reps ? _self.reps : reps // ignore: cast_nullable_to_non_nullable
as int?,duration: freezed == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as int?,weight: freezed == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as String?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of WorkoutSessionModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WorkoutExerciseModelCopyWith<$Res>? get exercise {
    if (_self.exercise == null) {
    return null;
  }

  return $WorkoutExerciseModelCopyWith<$Res>(_self.exercise!, (value) {
    return _then(_self.copyWith(exercise: value));
  });
}
}


/// Adds pattern-matching-related methods to [WorkoutSessionModel].
extension WorkoutSessionModelPatterns on WorkoutSessionModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WorkoutSessionModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WorkoutSessionModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WorkoutSessionModel value)  $default,){
final _that = this;
switch (_that) {
case _WorkoutSessionModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WorkoutSessionModel value)?  $default,){
final _that = this;
switch (_that) {
case _WorkoutSessionModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String? exerciseId,  String? workoutPlanId,  WorkoutExerciseModel? exercise,  int dayOfWeek,  int order,  int? sets,  int? reps,  int? duration,  String? weight,  String? notes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WorkoutSessionModel() when $default != null:
return $default(_that.id,_that.exerciseId,_that.workoutPlanId,_that.exercise,_that.dayOfWeek,_that.order,_that.sets,_that.reps,_that.duration,_that.weight,_that.notes);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String? exerciseId,  String? workoutPlanId,  WorkoutExerciseModel? exercise,  int dayOfWeek,  int order,  int? sets,  int? reps,  int? duration,  String? weight,  String? notes)  $default,) {final _that = this;
switch (_that) {
case _WorkoutSessionModel():
return $default(_that.id,_that.exerciseId,_that.workoutPlanId,_that.exercise,_that.dayOfWeek,_that.order,_that.sets,_that.reps,_that.duration,_that.weight,_that.notes);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String? exerciseId,  String? workoutPlanId,  WorkoutExerciseModel? exercise,  int dayOfWeek,  int order,  int? sets,  int? reps,  int? duration,  String? weight,  String? notes)?  $default,) {final _that = this;
switch (_that) {
case _WorkoutSessionModel() when $default != null:
return $default(_that.id,_that.exerciseId,_that.workoutPlanId,_that.exercise,_that.dayOfWeek,_that.order,_that.sets,_that.reps,_that.duration,_that.weight,_that.notes);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WorkoutSessionModel implements WorkoutSessionModel {
  const _WorkoutSessionModel({required this.id, this.exerciseId, this.workoutPlanId, this.exercise, this.dayOfWeek = 1, this.order = 0, this.sets, this.reps, this.duration, this.weight, this.notes});
  factory _WorkoutSessionModel.fromJson(Map<String, dynamic> json) => _$WorkoutSessionModelFromJson(json);

@override final  String id;
@override final  String? exerciseId;
@override final  String? workoutPlanId;
@override final  WorkoutExerciseModel? exercise;
@override@JsonKey() final  int dayOfWeek;
// 1-7 (Mon-Sun)
@override@JsonKey() final  int order;
@override final  int? sets;
@override final  int? reps;
@override final  int? duration;
// Seconds/Minutes
@override final  String? weight;
// Backend stores as varchar (e.g., '10kg', 'bw')
@override final  String? notes;

/// Create a copy of WorkoutSessionModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WorkoutSessionModelCopyWith<_WorkoutSessionModel> get copyWith => __$WorkoutSessionModelCopyWithImpl<_WorkoutSessionModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WorkoutSessionModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WorkoutSessionModel&&(identical(other.id, id) || other.id == id)&&(identical(other.exerciseId, exerciseId) || other.exerciseId == exerciseId)&&(identical(other.workoutPlanId, workoutPlanId) || other.workoutPlanId == workoutPlanId)&&(identical(other.exercise, exercise) || other.exercise == exercise)&&(identical(other.dayOfWeek, dayOfWeek) || other.dayOfWeek == dayOfWeek)&&(identical(other.order, order) || other.order == order)&&(identical(other.sets, sets) || other.sets == sets)&&(identical(other.reps, reps) || other.reps == reps)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.notes, notes) || other.notes == notes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,exerciseId,workoutPlanId,exercise,dayOfWeek,order,sets,reps,duration,weight,notes);

@override
String toString() {
  return 'WorkoutSessionModel(id: $id, exerciseId: $exerciseId, workoutPlanId: $workoutPlanId, exercise: $exercise, dayOfWeek: $dayOfWeek, order: $order, sets: $sets, reps: $reps, duration: $duration, weight: $weight, notes: $notes)';
}


}

/// @nodoc
abstract mixin class _$WorkoutSessionModelCopyWith<$Res> implements $WorkoutSessionModelCopyWith<$Res> {
  factory _$WorkoutSessionModelCopyWith(_WorkoutSessionModel value, $Res Function(_WorkoutSessionModel) _then) = __$WorkoutSessionModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String? exerciseId, String? workoutPlanId, WorkoutExerciseModel? exercise, int dayOfWeek, int order, int? sets, int? reps, int? duration, String? weight, String? notes
});


@override $WorkoutExerciseModelCopyWith<$Res>? get exercise;

}
/// @nodoc
class __$WorkoutSessionModelCopyWithImpl<$Res>
    implements _$WorkoutSessionModelCopyWith<$Res> {
  __$WorkoutSessionModelCopyWithImpl(this._self, this._then);

  final _WorkoutSessionModel _self;
  final $Res Function(_WorkoutSessionModel) _then;

/// Create a copy of WorkoutSessionModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? exerciseId = freezed,Object? workoutPlanId = freezed,Object? exercise = freezed,Object? dayOfWeek = null,Object? order = null,Object? sets = freezed,Object? reps = freezed,Object? duration = freezed,Object? weight = freezed,Object? notes = freezed,}) {
  return _then(_WorkoutSessionModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,exerciseId: freezed == exerciseId ? _self.exerciseId : exerciseId // ignore: cast_nullable_to_non_nullable
as String?,workoutPlanId: freezed == workoutPlanId ? _self.workoutPlanId : workoutPlanId // ignore: cast_nullable_to_non_nullable
as String?,exercise: freezed == exercise ? _self.exercise : exercise // ignore: cast_nullable_to_non_nullable
as WorkoutExerciseModel?,dayOfWeek: null == dayOfWeek ? _self.dayOfWeek : dayOfWeek // ignore: cast_nullable_to_non_nullable
as int,order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int,sets: freezed == sets ? _self.sets : sets // ignore: cast_nullable_to_non_nullable
as int?,reps: freezed == reps ? _self.reps : reps // ignore: cast_nullable_to_non_nullable
as int?,duration: freezed == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as int?,weight: freezed == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as String?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of WorkoutSessionModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WorkoutExerciseModelCopyWith<$Res>? get exercise {
    if (_self.exercise == null) {
    return null;
  }

  return $WorkoutExerciseModelCopyWith<$Res>(_self.exercise!, (value) {
    return _then(_self.copyWith(exercise: value));
  });
}
}


/// @nodoc
mixin _$WorkoutLogModel {

 String get id; String get memberId; String get exerciseId; String get sessionDate;// Backend returns date as string
 int? get setsCompleted; int? get repsCompleted; String? get weightUsed;// Backend stores as varchar
 int? get duration; int? get caloriesBurned; int? get rating; int? get difficulty; String? get notes;
/// Create a copy of WorkoutLogModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WorkoutLogModelCopyWith<WorkoutLogModel> get copyWith => _$WorkoutLogModelCopyWithImpl<WorkoutLogModel>(this as WorkoutLogModel, _$identity);

  /// Serializes this WorkoutLogModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WorkoutLogModel&&(identical(other.id, id) || other.id == id)&&(identical(other.memberId, memberId) || other.memberId == memberId)&&(identical(other.exerciseId, exerciseId) || other.exerciseId == exerciseId)&&(identical(other.sessionDate, sessionDate) || other.sessionDate == sessionDate)&&(identical(other.setsCompleted, setsCompleted) || other.setsCompleted == setsCompleted)&&(identical(other.repsCompleted, repsCompleted) || other.repsCompleted == repsCompleted)&&(identical(other.weightUsed, weightUsed) || other.weightUsed == weightUsed)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.caloriesBurned, caloriesBurned) || other.caloriesBurned == caloriesBurned)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.difficulty, difficulty) || other.difficulty == difficulty)&&(identical(other.notes, notes) || other.notes == notes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,memberId,exerciseId,sessionDate,setsCompleted,repsCompleted,weightUsed,duration,caloriesBurned,rating,difficulty,notes);

@override
String toString() {
  return 'WorkoutLogModel(id: $id, memberId: $memberId, exerciseId: $exerciseId, sessionDate: $sessionDate, setsCompleted: $setsCompleted, repsCompleted: $repsCompleted, weightUsed: $weightUsed, duration: $duration, caloriesBurned: $caloriesBurned, rating: $rating, difficulty: $difficulty, notes: $notes)';
}


}

/// @nodoc
abstract mixin class $WorkoutLogModelCopyWith<$Res>  {
  factory $WorkoutLogModelCopyWith(WorkoutLogModel value, $Res Function(WorkoutLogModel) _then) = _$WorkoutLogModelCopyWithImpl;
@useResult
$Res call({
 String id, String memberId, String exerciseId, String sessionDate, int? setsCompleted, int? repsCompleted, String? weightUsed, int? duration, int? caloriesBurned, int? rating, int? difficulty, String? notes
});




}
/// @nodoc
class _$WorkoutLogModelCopyWithImpl<$Res>
    implements $WorkoutLogModelCopyWith<$Res> {
  _$WorkoutLogModelCopyWithImpl(this._self, this._then);

  final WorkoutLogModel _self;
  final $Res Function(WorkoutLogModel) _then;

/// Create a copy of WorkoutLogModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? memberId = null,Object? exerciseId = null,Object? sessionDate = null,Object? setsCompleted = freezed,Object? repsCompleted = freezed,Object? weightUsed = freezed,Object? duration = freezed,Object? caloriesBurned = freezed,Object? rating = freezed,Object? difficulty = freezed,Object? notes = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,memberId: null == memberId ? _self.memberId : memberId // ignore: cast_nullable_to_non_nullable
as String,exerciseId: null == exerciseId ? _self.exerciseId : exerciseId // ignore: cast_nullable_to_non_nullable
as String,sessionDate: null == sessionDate ? _self.sessionDate : sessionDate // ignore: cast_nullable_to_non_nullable
as String,setsCompleted: freezed == setsCompleted ? _self.setsCompleted : setsCompleted // ignore: cast_nullable_to_non_nullable
as int?,repsCompleted: freezed == repsCompleted ? _self.repsCompleted : repsCompleted // ignore: cast_nullable_to_non_nullable
as int?,weightUsed: freezed == weightUsed ? _self.weightUsed : weightUsed // ignore: cast_nullable_to_non_nullable
as String?,duration: freezed == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as int?,caloriesBurned: freezed == caloriesBurned ? _self.caloriesBurned : caloriesBurned // ignore: cast_nullable_to_non_nullable
as int?,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int?,difficulty: freezed == difficulty ? _self.difficulty : difficulty // ignore: cast_nullable_to_non_nullable
as int?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [WorkoutLogModel].
extension WorkoutLogModelPatterns on WorkoutLogModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WorkoutLogModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WorkoutLogModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WorkoutLogModel value)  $default,){
final _that = this;
switch (_that) {
case _WorkoutLogModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WorkoutLogModel value)?  $default,){
final _that = this;
switch (_that) {
case _WorkoutLogModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String memberId,  String exerciseId,  String sessionDate,  int? setsCompleted,  int? repsCompleted,  String? weightUsed,  int? duration,  int? caloriesBurned,  int? rating,  int? difficulty,  String? notes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WorkoutLogModel() when $default != null:
return $default(_that.id,_that.memberId,_that.exerciseId,_that.sessionDate,_that.setsCompleted,_that.repsCompleted,_that.weightUsed,_that.duration,_that.caloriesBurned,_that.rating,_that.difficulty,_that.notes);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String memberId,  String exerciseId,  String sessionDate,  int? setsCompleted,  int? repsCompleted,  String? weightUsed,  int? duration,  int? caloriesBurned,  int? rating,  int? difficulty,  String? notes)  $default,) {final _that = this;
switch (_that) {
case _WorkoutLogModel():
return $default(_that.id,_that.memberId,_that.exerciseId,_that.sessionDate,_that.setsCompleted,_that.repsCompleted,_that.weightUsed,_that.duration,_that.caloriesBurned,_that.rating,_that.difficulty,_that.notes);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String memberId,  String exerciseId,  String sessionDate,  int? setsCompleted,  int? repsCompleted,  String? weightUsed,  int? duration,  int? caloriesBurned,  int? rating,  int? difficulty,  String? notes)?  $default,) {final _that = this;
switch (_that) {
case _WorkoutLogModel() when $default != null:
return $default(_that.id,_that.memberId,_that.exerciseId,_that.sessionDate,_that.setsCompleted,_that.repsCompleted,_that.weightUsed,_that.duration,_that.caloriesBurned,_that.rating,_that.difficulty,_that.notes);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WorkoutLogModel implements WorkoutLogModel {
  const _WorkoutLogModel({required this.id, required this.memberId, required this.exerciseId, required this.sessionDate, this.setsCompleted, this.repsCompleted, this.weightUsed, this.duration, this.caloriesBurned, this.rating, this.difficulty, this.notes});
  factory _WorkoutLogModel.fromJson(Map<String, dynamic> json) => _$WorkoutLogModelFromJson(json);

@override final  String id;
@override final  String memberId;
@override final  String exerciseId;
@override final  String sessionDate;
// Backend returns date as string
@override final  int? setsCompleted;
@override final  int? repsCompleted;
@override final  String? weightUsed;
// Backend stores as varchar
@override final  int? duration;
@override final  int? caloriesBurned;
@override final  int? rating;
@override final  int? difficulty;
@override final  String? notes;

/// Create a copy of WorkoutLogModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WorkoutLogModelCopyWith<_WorkoutLogModel> get copyWith => __$WorkoutLogModelCopyWithImpl<_WorkoutLogModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WorkoutLogModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WorkoutLogModel&&(identical(other.id, id) || other.id == id)&&(identical(other.memberId, memberId) || other.memberId == memberId)&&(identical(other.exerciseId, exerciseId) || other.exerciseId == exerciseId)&&(identical(other.sessionDate, sessionDate) || other.sessionDate == sessionDate)&&(identical(other.setsCompleted, setsCompleted) || other.setsCompleted == setsCompleted)&&(identical(other.repsCompleted, repsCompleted) || other.repsCompleted == repsCompleted)&&(identical(other.weightUsed, weightUsed) || other.weightUsed == weightUsed)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.caloriesBurned, caloriesBurned) || other.caloriesBurned == caloriesBurned)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.difficulty, difficulty) || other.difficulty == difficulty)&&(identical(other.notes, notes) || other.notes == notes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,memberId,exerciseId,sessionDate,setsCompleted,repsCompleted,weightUsed,duration,caloriesBurned,rating,difficulty,notes);

@override
String toString() {
  return 'WorkoutLogModel(id: $id, memberId: $memberId, exerciseId: $exerciseId, sessionDate: $sessionDate, setsCompleted: $setsCompleted, repsCompleted: $repsCompleted, weightUsed: $weightUsed, duration: $duration, caloriesBurned: $caloriesBurned, rating: $rating, difficulty: $difficulty, notes: $notes)';
}


}

/// @nodoc
abstract mixin class _$WorkoutLogModelCopyWith<$Res> implements $WorkoutLogModelCopyWith<$Res> {
  factory _$WorkoutLogModelCopyWith(_WorkoutLogModel value, $Res Function(_WorkoutLogModel) _then) = __$WorkoutLogModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String memberId, String exerciseId, String sessionDate, int? setsCompleted, int? repsCompleted, String? weightUsed, int? duration, int? caloriesBurned, int? rating, int? difficulty, String? notes
});




}
/// @nodoc
class __$WorkoutLogModelCopyWithImpl<$Res>
    implements _$WorkoutLogModelCopyWith<$Res> {
  __$WorkoutLogModelCopyWithImpl(this._self, this._then);

  final _WorkoutLogModel _self;
  final $Res Function(_WorkoutLogModel) _then;

/// Create a copy of WorkoutLogModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? memberId = null,Object? exerciseId = null,Object? sessionDate = null,Object? setsCompleted = freezed,Object? repsCompleted = freezed,Object? weightUsed = freezed,Object? duration = freezed,Object? caloriesBurned = freezed,Object? rating = freezed,Object? difficulty = freezed,Object? notes = freezed,}) {
  return _then(_WorkoutLogModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,memberId: null == memberId ? _self.memberId : memberId // ignore: cast_nullable_to_non_nullable
as String,exerciseId: null == exerciseId ? _self.exerciseId : exerciseId // ignore: cast_nullable_to_non_nullable
as String,sessionDate: null == sessionDate ? _self.sessionDate : sessionDate // ignore: cast_nullable_to_non_nullable
as String,setsCompleted: freezed == setsCompleted ? _self.setsCompleted : setsCompleted // ignore: cast_nullable_to_non_nullable
as int?,repsCompleted: freezed == repsCompleted ? _self.repsCompleted : repsCompleted // ignore: cast_nullable_to_non_nullable
as int?,weightUsed: freezed == weightUsed ? _self.weightUsed : weightUsed // ignore: cast_nullable_to_non_nullable
as String?,duration: freezed == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as int?,caloriesBurned: freezed == caloriesBurned ? _self.caloriesBurned : caloriesBurned // ignore: cast_nullable_to_non_nullable
as int?,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int?,difficulty: freezed == difficulty ? _self.difficulty : difficulty // ignore: cast_nullable_to_non_nullable
as int?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
