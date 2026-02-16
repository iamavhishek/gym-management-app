// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'member_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MemberState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MemberState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MemberState()';
}


}

/// @nodoc
class $MemberStateCopyWith<$Res>  {
$MemberStateCopyWith(MemberState _, $Res Function(MemberState) __);
}


/// Adds pattern-matching-related methods to [MemberState].
extension MemberStatePatterns on MemberState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Loading value)?  loading,TResult Function( _ProfileLoaded value)?  profileLoaded,TResult Function( _MembersLoaded value)?  membersLoaded,TResult Function( _MemberDetailLoaded value)?  memberDetailLoaded,TResult Function( _Error value)?  error,TResult Function( _UpdateSuccess value)?  updateSuccess,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _ProfileLoaded() when profileLoaded != null:
return profileLoaded(_that);case _MembersLoaded() when membersLoaded != null:
return membersLoaded(_that);case _MemberDetailLoaded() when memberDetailLoaded != null:
return memberDetailLoaded(_that);case _Error() when error != null:
return error(_that);case _UpdateSuccess() when updateSuccess != null:
return updateSuccess(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Loading value)  loading,required TResult Function( _ProfileLoaded value)  profileLoaded,required TResult Function( _MembersLoaded value)  membersLoaded,required TResult Function( _MemberDetailLoaded value)  memberDetailLoaded,required TResult Function( _Error value)  error,required TResult Function( _UpdateSuccess value)  updateSuccess,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Loading():
return loading(_that);case _ProfileLoaded():
return profileLoaded(_that);case _MembersLoaded():
return membersLoaded(_that);case _MemberDetailLoaded():
return memberDetailLoaded(_that);case _Error():
return error(_that);case _UpdateSuccess():
return updateSuccess(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Loading value)?  loading,TResult? Function( _ProfileLoaded value)?  profileLoaded,TResult? Function( _MembersLoaded value)?  membersLoaded,TResult? Function( _MemberDetailLoaded value)?  memberDetailLoaded,TResult? Function( _Error value)?  error,TResult? Function( _UpdateSuccess value)?  updateSuccess,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _ProfileLoaded() when profileLoaded != null:
return profileLoaded(_that);case _MembersLoaded() when membersLoaded != null:
return membersLoaded(_that);case _MemberDetailLoaded() when memberDetailLoaded != null:
return memberDetailLoaded(_that);case _Error() when error != null:
return error(_that);case _UpdateSuccess() when updateSuccess != null:
return updateSuccess(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( MemberModel profile)?  profileLoaded,TResult Function( List<MemberModel> members)?  membersLoaded,TResult Function( MemberModel member)?  memberDetailLoaded,TResult Function( String message)?  error,TResult Function( String message,  MemberModel? profile)?  updateSuccess,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _ProfileLoaded() when profileLoaded != null:
return profileLoaded(_that.profile);case _MembersLoaded() when membersLoaded != null:
return membersLoaded(_that.members);case _MemberDetailLoaded() when memberDetailLoaded != null:
return memberDetailLoaded(_that.member);case _Error() when error != null:
return error(_that.message);case _UpdateSuccess() when updateSuccess != null:
return updateSuccess(_that.message,_that.profile);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( MemberModel profile)  profileLoaded,required TResult Function( List<MemberModel> members)  membersLoaded,required TResult Function( MemberModel member)  memberDetailLoaded,required TResult Function( String message)  error,required TResult Function( String message,  MemberModel? profile)  updateSuccess,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Loading():
return loading();case _ProfileLoaded():
return profileLoaded(_that.profile);case _MembersLoaded():
return membersLoaded(_that.members);case _MemberDetailLoaded():
return memberDetailLoaded(_that.member);case _Error():
return error(_that.message);case _UpdateSuccess():
return updateSuccess(_that.message,_that.profile);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( MemberModel profile)?  profileLoaded,TResult? Function( List<MemberModel> members)?  membersLoaded,TResult? Function( MemberModel member)?  memberDetailLoaded,TResult? Function( String message)?  error,TResult? Function( String message,  MemberModel? profile)?  updateSuccess,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _ProfileLoaded() when profileLoaded != null:
return profileLoaded(_that.profile);case _MembersLoaded() when membersLoaded != null:
return membersLoaded(_that.members);case _MemberDetailLoaded() when memberDetailLoaded != null:
return memberDetailLoaded(_that.member);case _Error() when error != null:
return error(_that.message);case _UpdateSuccess() when updateSuccess != null:
return updateSuccess(_that.message,_that.profile);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements MemberState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MemberState.initial()';
}


}




/// @nodoc


class _Loading implements MemberState {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MemberState.loading()';
}


}




/// @nodoc


class _ProfileLoaded implements MemberState {
  const _ProfileLoaded(this.profile);
  

 final  MemberModel profile;

/// Create a copy of MemberState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProfileLoadedCopyWith<_ProfileLoaded> get copyWith => __$ProfileLoadedCopyWithImpl<_ProfileLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileLoaded&&(identical(other.profile, profile) || other.profile == profile));
}


@override
int get hashCode => Object.hash(runtimeType,profile);

@override
String toString() {
  return 'MemberState.profileLoaded(profile: $profile)';
}


}

/// @nodoc
abstract mixin class _$ProfileLoadedCopyWith<$Res> implements $MemberStateCopyWith<$Res> {
  factory _$ProfileLoadedCopyWith(_ProfileLoaded value, $Res Function(_ProfileLoaded) _then) = __$ProfileLoadedCopyWithImpl;
@useResult
$Res call({
 MemberModel profile
});


$MemberModelCopyWith<$Res> get profile;

}
/// @nodoc
class __$ProfileLoadedCopyWithImpl<$Res>
    implements _$ProfileLoadedCopyWith<$Res> {
  __$ProfileLoadedCopyWithImpl(this._self, this._then);

  final _ProfileLoaded _self;
  final $Res Function(_ProfileLoaded) _then;

/// Create a copy of MemberState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? profile = null,}) {
  return _then(_ProfileLoaded(
null == profile ? _self.profile : profile // ignore: cast_nullable_to_non_nullable
as MemberModel,
  ));
}

/// Create a copy of MemberState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MemberModelCopyWith<$Res> get profile {
  
  return $MemberModelCopyWith<$Res>(_self.profile, (value) {
    return _then(_self.copyWith(profile: value));
  });
}
}

/// @nodoc


class _MembersLoaded implements MemberState {
  const _MembersLoaded(final  List<MemberModel> members): _members = members;
  

 final  List<MemberModel> _members;
 List<MemberModel> get members {
  if (_members is EqualUnmodifiableListView) return _members;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_members);
}


/// Create a copy of MemberState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MembersLoadedCopyWith<_MembersLoaded> get copyWith => __$MembersLoadedCopyWithImpl<_MembersLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MembersLoaded&&const DeepCollectionEquality().equals(other._members, _members));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_members));

@override
String toString() {
  return 'MemberState.membersLoaded(members: $members)';
}


}

/// @nodoc
abstract mixin class _$MembersLoadedCopyWith<$Res> implements $MemberStateCopyWith<$Res> {
  factory _$MembersLoadedCopyWith(_MembersLoaded value, $Res Function(_MembersLoaded) _then) = __$MembersLoadedCopyWithImpl;
@useResult
$Res call({
 List<MemberModel> members
});




}
/// @nodoc
class __$MembersLoadedCopyWithImpl<$Res>
    implements _$MembersLoadedCopyWith<$Res> {
  __$MembersLoadedCopyWithImpl(this._self, this._then);

  final _MembersLoaded _self;
  final $Res Function(_MembersLoaded) _then;

/// Create a copy of MemberState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? members = null,}) {
  return _then(_MembersLoaded(
null == members ? _self._members : members // ignore: cast_nullable_to_non_nullable
as List<MemberModel>,
  ));
}


}

/// @nodoc


class _MemberDetailLoaded implements MemberState {
  const _MemberDetailLoaded(this.member);
  

 final  MemberModel member;

/// Create a copy of MemberState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MemberDetailLoadedCopyWith<_MemberDetailLoaded> get copyWith => __$MemberDetailLoadedCopyWithImpl<_MemberDetailLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MemberDetailLoaded&&(identical(other.member, member) || other.member == member));
}


@override
int get hashCode => Object.hash(runtimeType,member);

@override
String toString() {
  return 'MemberState.memberDetailLoaded(member: $member)';
}


}

/// @nodoc
abstract mixin class _$MemberDetailLoadedCopyWith<$Res> implements $MemberStateCopyWith<$Res> {
  factory _$MemberDetailLoadedCopyWith(_MemberDetailLoaded value, $Res Function(_MemberDetailLoaded) _then) = __$MemberDetailLoadedCopyWithImpl;
@useResult
$Res call({
 MemberModel member
});


$MemberModelCopyWith<$Res> get member;

}
/// @nodoc
class __$MemberDetailLoadedCopyWithImpl<$Res>
    implements _$MemberDetailLoadedCopyWith<$Res> {
  __$MemberDetailLoadedCopyWithImpl(this._self, this._then);

  final _MemberDetailLoaded _self;
  final $Res Function(_MemberDetailLoaded) _then;

/// Create a copy of MemberState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? member = null,}) {
  return _then(_MemberDetailLoaded(
null == member ? _self.member : member // ignore: cast_nullable_to_non_nullable
as MemberModel,
  ));
}

/// Create a copy of MemberState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MemberModelCopyWith<$Res> get member {
  
  return $MemberModelCopyWith<$Res>(_self.member, (value) {
    return _then(_self.copyWith(member: value));
  });
}
}

/// @nodoc


class _Error implements MemberState {
  const _Error(this.message);
  

 final  String message;

/// Create a copy of MemberState
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
  return 'MemberState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorCopyWith<$Res> implements $MemberStateCopyWith<$Res> {
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

/// Create a copy of MemberState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_Error(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _UpdateSuccess implements MemberState {
  const _UpdateSuccess(this.message, [this.profile]);
  

 final  String message;
 final  MemberModel? profile;

/// Create a copy of MemberState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateSuccessCopyWith<_UpdateSuccess> get copyWith => __$UpdateSuccessCopyWithImpl<_UpdateSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateSuccess&&(identical(other.message, message) || other.message == message)&&(identical(other.profile, profile) || other.profile == profile));
}


@override
int get hashCode => Object.hash(runtimeType,message,profile);

@override
String toString() {
  return 'MemberState.updateSuccess(message: $message, profile: $profile)';
}


}

/// @nodoc
abstract mixin class _$UpdateSuccessCopyWith<$Res> implements $MemberStateCopyWith<$Res> {
  factory _$UpdateSuccessCopyWith(_UpdateSuccess value, $Res Function(_UpdateSuccess) _then) = __$UpdateSuccessCopyWithImpl;
@useResult
$Res call({
 String message, MemberModel? profile
});


$MemberModelCopyWith<$Res>? get profile;

}
/// @nodoc
class __$UpdateSuccessCopyWithImpl<$Res>
    implements _$UpdateSuccessCopyWith<$Res> {
  __$UpdateSuccessCopyWithImpl(this._self, this._then);

  final _UpdateSuccess _self;
  final $Res Function(_UpdateSuccess) _then;

/// Create a copy of MemberState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,Object? profile = freezed,}) {
  return _then(_UpdateSuccess(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,freezed == profile ? _self.profile : profile // ignore: cast_nullable_to_non_nullable
as MemberModel?,
  ));
}

/// Create a copy of MemberState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MemberModelCopyWith<$Res>? get profile {
    if (_self.profile == null) {
    return null;
  }

  return $MemberModelCopyWith<$Res>(_self.profile!, (value) {
    return _then(_self.copyWith(profile: value));
  });
}
}

// dart format on
