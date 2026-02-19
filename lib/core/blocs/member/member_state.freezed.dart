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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( MemberInitial value)?  initial,TResult Function( MemberLoading value)?  loading,TResult Function( MemberProfileLoaded value)?  profileLoaded,TResult Function( MemberMembersLoaded value)?  membersLoaded,TResult Function( MemberDetailLoaded value)?  memberDetailLoaded,TResult Function( MemberError value)?  error,TResult Function( MemberUpdateSuccess value)?  updateSuccess,required TResult orElse(),}){
final _that = this;
switch (_that) {
case MemberInitial() when initial != null:
return initial(_that);case MemberLoading() when loading != null:
return loading(_that);case MemberProfileLoaded() when profileLoaded != null:
return profileLoaded(_that);case MemberMembersLoaded() when membersLoaded != null:
return membersLoaded(_that);case MemberDetailLoaded() when memberDetailLoaded != null:
return memberDetailLoaded(_that);case MemberError() when error != null:
return error(_that);case MemberUpdateSuccess() when updateSuccess != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( MemberInitial value)  initial,required TResult Function( MemberLoading value)  loading,required TResult Function( MemberProfileLoaded value)  profileLoaded,required TResult Function( MemberMembersLoaded value)  membersLoaded,required TResult Function( MemberDetailLoaded value)  memberDetailLoaded,required TResult Function( MemberError value)  error,required TResult Function( MemberUpdateSuccess value)  updateSuccess,}){
final _that = this;
switch (_that) {
case MemberInitial():
return initial(_that);case MemberLoading():
return loading(_that);case MemberProfileLoaded():
return profileLoaded(_that);case MemberMembersLoaded():
return membersLoaded(_that);case MemberDetailLoaded():
return memberDetailLoaded(_that);case MemberError():
return error(_that);case MemberUpdateSuccess():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( MemberInitial value)?  initial,TResult? Function( MemberLoading value)?  loading,TResult? Function( MemberProfileLoaded value)?  profileLoaded,TResult? Function( MemberMembersLoaded value)?  membersLoaded,TResult? Function( MemberDetailLoaded value)?  memberDetailLoaded,TResult? Function( MemberError value)?  error,TResult? Function( MemberUpdateSuccess value)?  updateSuccess,}){
final _that = this;
switch (_that) {
case MemberInitial() when initial != null:
return initial(_that);case MemberLoading() when loading != null:
return loading(_that);case MemberProfileLoaded() when profileLoaded != null:
return profileLoaded(_that);case MemberMembersLoaded() when membersLoaded != null:
return membersLoaded(_that);case MemberDetailLoaded() when memberDetailLoaded != null:
return memberDetailLoaded(_that);case MemberError() when error != null:
return error(_that);case MemberUpdateSuccess() when updateSuccess != null:
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
case MemberInitial() when initial != null:
return initial();case MemberLoading() when loading != null:
return loading();case MemberProfileLoaded() when profileLoaded != null:
return profileLoaded(_that.profile);case MemberMembersLoaded() when membersLoaded != null:
return membersLoaded(_that.members);case MemberDetailLoaded() when memberDetailLoaded != null:
return memberDetailLoaded(_that.member);case MemberError() when error != null:
return error(_that.message);case MemberUpdateSuccess() when updateSuccess != null:
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
case MemberInitial():
return initial();case MemberLoading():
return loading();case MemberProfileLoaded():
return profileLoaded(_that.profile);case MemberMembersLoaded():
return membersLoaded(_that.members);case MemberDetailLoaded():
return memberDetailLoaded(_that.member);case MemberError():
return error(_that.message);case MemberUpdateSuccess():
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
case MemberInitial() when initial != null:
return initial();case MemberLoading() when loading != null:
return loading();case MemberProfileLoaded() when profileLoaded != null:
return profileLoaded(_that.profile);case MemberMembersLoaded() when membersLoaded != null:
return membersLoaded(_that.members);case MemberDetailLoaded() when memberDetailLoaded != null:
return memberDetailLoaded(_that.member);case MemberError() when error != null:
return error(_that.message);case MemberUpdateSuccess() when updateSuccess != null:
return updateSuccess(_that.message,_that.profile);case _:
  return null;

}
}

}

/// @nodoc


class MemberInitial implements MemberState {
  const MemberInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MemberInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MemberState.initial()';
}


}




/// @nodoc


class MemberLoading implements MemberState {
  const MemberLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MemberLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MemberState.loading()';
}


}




/// @nodoc


class MemberProfileLoaded implements MemberState {
  const MemberProfileLoaded(this.profile);
  

 final  MemberModel profile;

/// Create a copy of MemberState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MemberProfileLoadedCopyWith<MemberProfileLoaded> get copyWith => _$MemberProfileLoadedCopyWithImpl<MemberProfileLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MemberProfileLoaded&&(identical(other.profile, profile) || other.profile == profile));
}


@override
int get hashCode => Object.hash(runtimeType,profile);

@override
String toString() {
  return 'MemberState.profileLoaded(profile: $profile)';
}


}

/// @nodoc
abstract mixin class $MemberProfileLoadedCopyWith<$Res> implements $MemberStateCopyWith<$Res> {
  factory $MemberProfileLoadedCopyWith(MemberProfileLoaded value, $Res Function(MemberProfileLoaded) _then) = _$MemberProfileLoadedCopyWithImpl;
@useResult
$Res call({
 MemberModel profile
});


$MemberModelCopyWith<$Res> get profile;

}
/// @nodoc
class _$MemberProfileLoadedCopyWithImpl<$Res>
    implements $MemberProfileLoadedCopyWith<$Res> {
  _$MemberProfileLoadedCopyWithImpl(this._self, this._then);

  final MemberProfileLoaded _self;
  final $Res Function(MemberProfileLoaded) _then;

/// Create a copy of MemberState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? profile = null,}) {
  return _then(MemberProfileLoaded(
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


class MemberMembersLoaded implements MemberState {
  const MemberMembersLoaded(final  List<MemberModel> members): _members = members;
  

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
$MemberMembersLoadedCopyWith<MemberMembersLoaded> get copyWith => _$MemberMembersLoadedCopyWithImpl<MemberMembersLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MemberMembersLoaded&&const DeepCollectionEquality().equals(other._members, _members));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_members));

@override
String toString() {
  return 'MemberState.membersLoaded(members: $members)';
}


}

/// @nodoc
abstract mixin class $MemberMembersLoadedCopyWith<$Res> implements $MemberStateCopyWith<$Res> {
  factory $MemberMembersLoadedCopyWith(MemberMembersLoaded value, $Res Function(MemberMembersLoaded) _then) = _$MemberMembersLoadedCopyWithImpl;
@useResult
$Res call({
 List<MemberModel> members
});




}
/// @nodoc
class _$MemberMembersLoadedCopyWithImpl<$Res>
    implements $MemberMembersLoadedCopyWith<$Res> {
  _$MemberMembersLoadedCopyWithImpl(this._self, this._then);

  final MemberMembersLoaded _self;
  final $Res Function(MemberMembersLoaded) _then;

/// Create a copy of MemberState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? members = null,}) {
  return _then(MemberMembersLoaded(
null == members ? _self._members : members // ignore: cast_nullable_to_non_nullable
as List<MemberModel>,
  ));
}


}

/// @nodoc


class MemberDetailLoaded implements MemberState {
  const MemberDetailLoaded(this.member);
  

 final  MemberModel member;

/// Create a copy of MemberState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MemberDetailLoadedCopyWith<MemberDetailLoaded> get copyWith => _$MemberDetailLoadedCopyWithImpl<MemberDetailLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MemberDetailLoaded&&(identical(other.member, member) || other.member == member));
}


@override
int get hashCode => Object.hash(runtimeType,member);

@override
String toString() {
  return 'MemberState.memberDetailLoaded(member: $member)';
}


}

/// @nodoc
abstract mixin class $MemberDetailLoadedCopyWith<$Res> implements $MemberStateCopyWith<$Res> {
  factory $MemberDetailLoadedCopyWith(MemberDetailLoaded value, $Res Function(MemberDetailLoaded) _then) = _$MemberDetailLoadedCopyWithImpl;
@useResult
$Res call({
 MemberModel member
});


$MemberModelCopyWith<$Res> get member;

}
/// @nodoc
class _$MemberDetailLoadedCopyWithImpl<$Res>
    implements $MemberDetailLoadedCopyWith<$Res> {
  _$MemberDetailLoadedCopyWithImpl(this._self, this._then);

  final MemberDetailLoaded _self;
  final $Res Function(MemberDetailLoaded) _then;

/// Create a copy of MemberState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? member = null,}) {
  return _then(MemberDetailLoaded(
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


class MemberError implements MemberState {
  const MemberError(this.message);
  

 final  String message;

/// Create a copy of MemberState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MemberErrorCopyWith<MemberError> get copyWith => _$MemberErrorCopyWithImpl<MemberError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MemberError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'MemberState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $MemberErrorCopyWith<$Res> implements $MemberStateCopyWith<$Res> {
  factory $MemberErrorCopyWith(MemberError value, $Res Function(MemberError) _then) = _$MemberErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$MemberErrorCopyWithImpl<$Res>
    implements $MemberErrorCopyWith<$Res> {
  _$MemberErrorCopyWithImpl(this._self, this._then);

  final MemberError _self;
  final $Res Function(MemberError) _then;

/// Create a copy of MemberState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(MemberError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class MemberUpdateSuccess implements MemberState {
  const MemberUpdateSuccess(this.message, [this.profile]);
  

 final  String message;
 final  MemberModel? profile;

/// Create a copy of MemberState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MemberUpdateSuccessCopyWith<MemberUpdateSuccess> get copyWith => _$MemberUpdateSuccessCopyWithImpl<MemberUpdateSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MemberUpdateSuccess&&(identical(other.message, message) || other.message == message)&&(identical(other.profile, profile) || other.profile == profile));
}


@override
int get hashCode => Object.hash(runtimeType,message,profile);

@override
String toString() {
  return 'MemberState.updateSuccess(message: $message, profile: $profile)';
}


}

/// @nodoc
abstract mixin class $MemberUpdateSuccessCopyWith<$Res> implements $MemberStateCopyWith<$Res> {
  factory $MemberUpdateSuccessCopyWith(MemberUpdateSuccess value, $Res Function(MemberUpdateSuccess) _then) = _$MemberUpdateSuccessCopyWithImpl;
@useResult
$Res call({
 String message, MemberModel? profile
});


$MemberModelCopyWith<$Res>? get profile;

}
/// @nodoc
class _$MemberUpdateSuccessCopyWithImpl<$Res>
    implements $MemberUpdateSuccessCopyWith<$Res> {
  _$MemberUpdateSuccessCopyWithImpl(this._self, this._then);

  final MemberUpdateSuccess _self;
  final $Res Function(MemberUpdateSuccess) _then;

/// Create a copy of MemberState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,Object? profile = freezed,}) {
  return _then(MemberUpdateSuccess(
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
