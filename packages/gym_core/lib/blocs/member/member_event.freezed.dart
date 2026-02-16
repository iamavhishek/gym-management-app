// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'member_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MemberEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MemberEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MemberEvent()';
}


}

/// @nodoc
class $MemberEventCopyWith<$Res>  {
$MemberEventCopyWith(MemberEvent _, $Res Function(MemberEvent) __);
}


/// Adds pattern-matching-related methods to [MemberEvent].
extension MemberEventPatterns on MemberEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _ProfileStarted value)?  profileStarted,TResult Function( _UpdateProfile value)?  updateProfile,TResult Function( _FetchMembers value)?  fetchMembers,TResult Function( _CreateMember value)?  createMember,TResult Function( _UpdateMember value)?  updateMember,TResult Function( _FetchClients value)?  fetchClients,TResult Function( _FetchMemberDetails value)?  fetchMemberDetails,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProfileStarted() when profileStarted != null:
return profileStarted(_that);case _UpdateProfile() when updateProfile != null:
return updateProfile(_that);case _FetchMembers() when fetchMembers != null:
return fetchMembers(_that);case _CreateMember() when createMember != null:
return createMember(_that);case _UpdateMember() when updateMember != null:
return updateMember(_that);case _FetchClients() when fetchClients != null:
return fetchClients(_that);case _FetchMemberDetails() when fetchMemberDetails != null:
return fetchMemberDetails(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _ProfileStarted value)  profileStarted,required TResult Function( _UpdateProfile value)  updateProfile,required TResult Function( _FetchMembers value)  fetchMembers,required TResult Function( _CreateMember value)  createMember,required TResult Function( _UpdateMember value)  updateMember,required TResult Function( _FetchClients value)  fetchClients,required TResult Function( _FetchMemberDetails value)  fetchMemberDetails,}){
final _that = this;
switch (_that) {
case _ProfileStarted():
return profileStarted(_that);case _UpdateProfile():
return updateProfile(_that);case _FetchMembers():
return fetchMembers(_that);case _CreateMember():
return createMember(_that);case _UpdateMember():
return updateMember(_that);case _FetchClients():
return fetchClients(_that);case _FetchMemberDetails():
return fetchMemberDetails(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _ProfileStarted value)?  profileStarted,TResult? Function( _UpdateProfile value)?  updateProfile,TResult? Function( _FetchMembers value)?  fetchMembers,TResult? Function( _CreateMember value)?  createMember,TResult? Function( _UpdateMember value)?  updateMember,TResult? Function( _FetchClients value)?  fetchClients,TResult? Function( _FetchMemberDetails value)?  fetchMemberDetails,}){
final _that = this;
switch (_that) {
case _ProfileStarted() when profileStarted != null:
return profileStarted(_that);case _UpdateProfile() when updateProfile != null:
return updateProfile(_that);case _FetchMembers() when fetchMembers != null:
return fetchMembers(_that);case _CreateMember() when createMember != null:
return createMember(_that);case _UpdateMember() when updateMember != null:
return updateMember(_that);case _FetchClients() when fetchClients != null:
return fetchClients(_that);case _FetchMemberDetails() when fetchMemberDetails != null:
return fetchMemberDetails(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  profileStarted,TResult Function( String? phone,  String? height,  String? weight,  String? goals)?  updateProfile,TResult Function( int page)?  fetchMembers,TResult Function( Map<String, dynamic> memberData)?  createMember,TResult Function( String id,  Map<String, dynamic> data)?  updateMember,TResult Function()?  fetchClients,TResult Function( String id)?  fetchMemberDetails,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProfileStarted() when profileStarted != null:
return profileStarted();case _UpdateProfile() when updateProfile != null:
return updateProfile(_that.phone,_that.height,_that.weight,_that.goals);case _FetchMembers() when fetchMembers != null:
return fetchMembers(_that.page);case _CreateMember() when createMember != null:
return createMember(_that.memberData);case _UpdateMember() when updateMember != null:
return updateMember(_that.id,_that.data);case _FetchClients() when fetchClients != null:
return fetchClients();case _FetchMemberDetails() when fetchMemberDetails != null:
return fetchMemberDetails(_that.id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  profileStarted,required TResult Function( String? phone,  String? height,  String? weight,  String? goals)  updateProfile,required TResult Function( int page)  fetchMembers,required TResult Function( Map<String, dynamic> memberData)  createMember,required TResult Function( String id,  Map<String, dynamic> data)  updateMember,required TResult Function()  fetchClients,required TResult Function( String id)  fetchMemberDetails,}) {final _that = this;
switch (_that) {
case _ProfileStarted():
return profileStarted();case _UpdateProfile():
return updateProfile(_that.phone,_that.height,_that.weight,_that.goals);case _FetchMembers():
return fetchMembers(_that.page);case _CreateMember():
return createMember(_that.memberData);case _UpdateMember():
return updateMember(_that.id,_that.data);case _FetchClients():
return fetchClients();case _FetchMemberDetails():
return fetchMemberDetails(_that.id);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  profileStarted,TResult? Function( String? phone,  String? height,  String? weight,  String? goals)?  updateProfile,TResult? Function( int page)?  fetchMembers,TResult? Function( Map<String, dynamic> memberData)?  createMember,TResult? Function( String id,  Map<String, dynamic> data)?  updateMember,TResult? Function()?  fetchClients,TResult? Function( String id)?  fetchMemberDetails,}) {final _that = this;
switch (_that) {
case _ProfileStarted() when profileStarted != null:
return profileStarted();case _UpdateProfile() when updateProfile != null:
return updateProfile(_that.phone,_that.height,_that.weight,_that.goals);case _FetchMembers() when fetchMembers != null:
return fetchMembers(_that.page);case _CreateMember() when createMember != null:
return createMember(_that.memberData);case _UpdateMember() when updateMember != null:
return updateMember(_that.id,_that.data);case _FetchClients() when fetchClients != null:
return fetchClients();case _FetchMemberDetails() when fetchMemberDetails != null:
return fetchMemberDetails(_that.id);case _:
  return null;

}
}

}

/// @nodoc


class _ProfileStarted implements MemberEvent {
  const _ProfileStarted();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileStarted);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MemberEvent.profileStarted()';
}


}




/// @nodoc


class _UpdateProfile implements MemberEvent {
  const _UpdateProfile({this.phone, this.height, this.weight, this.goals});
  

 final  String? phone;
 final  String? height;
 final  String? weight;
 final  String? goals;

/// Create a copy of MemberEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateProfileCopyWith<_UpdateProfile> get copyWith => __$UpdateProfileCopyWithImpl<_UpdateProfile>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateProfile&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.height, height) || other.height == height)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.goals, goals) || other.goals == goals));
}


@override
int get hashCode => Object.hash(runtimeType,phone,height,weight,goals);

@override
String toString() {
  return 'MemberEvent.updateProfile(phone: $phone, height: $height, weight: $weight, goals: $goals)';
}


}

/// @nodoc
abstract mixin class _$UpdateProfileCopyWith<$Res> implements $MemberEventCopyWith<$Res> {
  factory _$UpdateProfileCopyWith(_UpdateProfile value, $Res Function(_UpdateProfile) _then) = __$UpdateProfileCopyWithImpl;
@useResult
$Res call({
 String? phone, String? height, String? weight, String? goals
});




}
/// @nodoc
class __$UpdateProfileCopyWithImpl<$Res>
    implements _$UpdateProfileCopyWith<$Res> {
  __$UpdateProfileCopyWithImpl(this._self, this._then);

  final _UpdateProfile _self;
  final $Res Function(_UpdateProfile) _then;

/// Create a copy of MemberEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? phone = freezed,Object? height = freezed,Object? weight = freezed,Object? goals = freezed,}) {
  return _then(_UpdateProfile(
phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,height: freezed == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as String?,weight: freezed == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as String?,goals: freezed == goals ? _self.goals : goals // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _FetchMembers implements MemberEvent {
  const _FetchMembers({this.page = 1});
  

@JsonKey() final  int page;

/// Create a copy of MemberEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FetchMembersCopyWith<_FetchMembers> get copyWith => __$FetchMembersCopyWithImpl<_FetchMembers>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FetchMembers&&(identical(other.page, page) || other.page == page));
}


@override
int get hashCode => Object.hash(runtimeType,page);

@override
String toString() {
  return 'MemberEvent.fetchMembers(page: $page)';
}


}

/// @nodoc
abstract mixin class _$FetchMembersCopyWith<$Res> implements $MemberEventCopyWith<$Res> {
  factory _$FetchMembersCopyWith(_FetchMembers value, $Res Function(_FetchMembers) _then) = __$FetchMembersCopyWithImpl;
@useResult
$Res call({
 int page
});




}
/// @nodoc
class __$FetchMembersCopyWithImpl<$Res>
    implements _$FetchMembersCopyWith<$Res> {
  __$FetchMembersCopyWithImpl(this._self, this._then);

  final _FetchMembers _self;
  final $Res Function(_FetchMembers) _then;

/// Create a copy of MemberEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? page = null,}) {
  return _then(_FetchMembers(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _CreateMember implements MemberEvent {
  const _CreateMember(final  Map<String, dynamic> memberData): _memberData = memberData;
  

 final  Map<String, dynamic> _memberData;
 Map<String, dynamic> get memberData {
  if (_memberData is EqualUnmodifiableMapView) return _memberData;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_memberData);
}


/// Create a copy of MemberEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateMemberCopyWith<_CreateMember> get copyWith => __$CreateMemberCopyWithImpl<_CreateMember>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateMember&&const DeepCollectionEquality().equals(other._memberData, _memberData));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_memberData));

@override
String toString() {
  return 'MemberEvent.createMember(memberData: $memberData)';
}


}

/// @nodoc
abstract mixin class _$CreateMemberCopyWith<$Res> implements $MemberEventCopyWith<$Res> {
  factory _$CreateMemberCopyWith(_CreateMember value, $Res Function(_CreateMember) _then) = __$CreateMemberCopyWithImpl;
@useResult
$Res call({
 Map<String, dynamic> memberData
});




}
/// @nodoc
class __$CreateMemberCopyWithImpl<$Res>
    implements _$CreateMemberCopyWith<$Res> {
  __$CreateMemberCopyWithImpl(this._self, this._then);

  final _CreateMember _self;
  final $Res Function(_CreateMember) _then;

/// Create a copy of MemberEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? memberData = null,}) {
  return _then(_CreateMember(
null == memberData ? _self._memberData : memberData // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}

/// @nodoc


class _UpdateMember implements MemberEvent {
  const _UpdateMember(this.id, final  Map<String, dynamic> data): _data = data;
  

 final  String id;
 final  Map<String, dynamic> _data;
 Map<String, dynamic> get data {
  if (_data is EqualUnmodifiableMapView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_data);
}


/// Create a copy of MemberEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateMemberCopyWith<_UpdateMember> get copyWith => __$UpdateMemberCopyWithImpl<_UpdateMember>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateMember&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other._data, _data));
}


@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'MemberEvent.updateMember(id: $id, data: $data)';
}


}

/// @nodoc
abstract mixin class _$UpdateMemberCopyWith<$Res> implements $MemberEventCopyWith<$Res> {
  factory _$UpdateMemberCopyWith(_UpdateMember value, $Res Function(_UpdateMember) _then) = __$UpdateMemberCopyWithImpl;
@useResult
$Res call({
 String id, Map<String, dynamic> data
});




}
/// @nodoc
class __$UpdateMemberCopyWithImpl<$Res>
    implements _$UpdateMemberCopyWith<$Res> {
  __$UpdateMemberCopyWithImpl(this._self, this._then);

  final _UpdateMember _self;
  final $Res Function(_UpdateMember) _then;

/// Create a copy of MemberEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,Object? data = null,}) {
  return _then(_UpdateMember(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}

/// @nodoc


class _FetchClients implements MemberEvent {
  const _FetchClients();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FetchClients);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MemberEvent.fetchClients()';
}


}




/// @nodoc


class _FetchMemberDetails implements MemberEvent {
  const _FetchMemberDetails(this.id);
  

 final  String id;

/// Create a copy of MemberEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FetchMemberDetailsCopyWith<_FetchMemberDetails> get copyWith => __$FetchMemberDetailsCopyWithImpl<_FetchMemberDetails>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FetchMemberDetails&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'MemberEvent.fetchMemberDetails(id: $id)';
}


}

/// @nodoc
abstract mixin class _$FetchMemberDetailsCopyWith<$Res> implements $MemberEventCopyWith<$Res> {
  factory _$FetchMemberDetailsCopyWith(_FetchMemberDetails value, $Res Function(_FetchMemberDetails) _then) = __$FetchMemberDetailsCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class __$FetchMemberDetailsCopyWithImpl<$Res>
    implements _$FetchMemberDetailsCopyWith<$Res> {
  __$FetchMemberDetailsCopyWithImpl(this._self, this._then);

  final _FetchMemberDetails _self;
  final $Res Function(_FetchMemberDetails) _then;

/// Create a copy of MemberEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_FetchMemberDetails(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
