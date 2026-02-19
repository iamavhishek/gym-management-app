// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attendance_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AttendanceEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AttendanceEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AttendanceEvent()';
}


}

/// @nodoc
class $AttendanceEventCopyWith<$Res>  {
$AttendanceEventCopyWith(AttendanceEvent _, $Res Function(AttendanceEvent) __);
}


/// Adds pattern-matching-related methods to [AttendanceEvent].
extension AttendanceEventPatterns on AttendanceEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _FetchHistory value)?  fetchHistory,TResult Function( _CheckIn value)?  checkIn,TResult Function( _CheckOut value)?  checkOut,TResult Function( _ScanQr value)?  scanQr,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FetchHistory() when fetchHistory != null:
return fetchHistory(_that);case _CheckIn() when checkIn != null:
return checkIn(_that);case _CheckOut() when checkOut != null:
return checkOut(_that);case _ScanQr() when scanQr != null:
return scanQr(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _FetchHistory value)  fetchHistory,required TResult Function( _CheckIn value)  checkIn,required TResult Function( _CheckOut value)  checkOut,required TResult Function( _ScanQr value)  scanQr,}){
final _that = this;
switch (_that) {
case _FetchHistory():
return fetchHistory(_that);case _CheckIn():
return checkIn(_that);case _CheckOut():
return checkOut(_that);case _ScanQr():
return scanQr(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _FetchHistory value)?  fetchHistory,TResult? Function( _CheckIn value)?  checkIn,TResult? Function( _CheckOut value)?  checkOut,TResult? Function( _ScanQr value)?  scanQr,}){
final _that = this;
switch (_that) {
case _FetchHistory() when fetchHistory != null:
return fetchHistory(_that);case _CheckIn() when checkIn != null:
return checkIn(_that);case _CheckOut() when checkOut != null:
return checkOut(_that);case _ScanQr() when scanQr != null:
return scanQr(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String memberId)?  fetchHistory,TResult Function( String memberId,  String method)?  checkIn,TResult Function( String attendanceId)?  checkOut,TResult Function( String qrCode)?  scanQr,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FetchHistory() when fetchHistory != null:
return fetchHistory(_that.memberId);case _CheckIn() when checkIn != null:
return checkIn(_that.memberId,_that.method);case _CheckOut() when checkOut != null:
return checkOut(_that.attendanceId);case _ScanQr() when scanQr != null:
return scanQr(_that.qrCode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String memberId)  fetchHistory,required TResult Function( String memberId,  String method)  checkIn,required TResult Function( String attendanceId)  checkOut,required TResult Function( String qrCode)  scanQr,}) {final _that = this;
switch (_that) {
case _FetchHistory():
return fetchHistory(_that.memberId);case _CheckIn():
return checkIn(_that.memberId,_that.method);case _CheckOut():
return checkOut(_that.attendanceId);case _ScanQr():
return scanQr(_that.qrCode);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String memberId)?  fetchHistory,TResult? Function( String memberId,  String method)?  checkIn,TResult? Function( String attendanceId)?  checkOut,TResult? Function( String qrCode)?  scanQr,}) {final _that = this;
switch (_that) {
case _FetchHistory() when fetchHistory != null:
return fetchHistory(_that.memberId);case _CheckIn() when checkIn != null:
return checkIn(_that.memberId,_that.method);case _CheckOut() when checkOut != null:
return checkOut(_that.attendanceId);case _ScanQr() when scanQr != null:
return scanQr(_that.qrCode);case _:
  return null;

}
}

}

/// @nodoc


class _FetchHistory implements AttendanceEvent {
  const _FetchHistory(this.memberId);
  

 final  String memberId;

/// Create a copy of AttendanceEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FetchHistoryCopyWith<_FetchHistory> get copyWith => __$FetchHistoryCopyWithImpl<_FetchHistory>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FetchHistory&&(identical(other.memberId, memberId) || other.memberId == memberId));
}


@override
int get hashCode => Object.hash(runtimeType,memberId);

@override
String toString() {
  return 'AttendanceEvent.fetchHistory(memberId: $memberId)';
}


}

/// @nodoc
abstract mixin class _$FetchHistoryCopyWith<$Res> implements $AttendanceEventCopyWith<$Res> {
  factory _$FetchHistoryCopyWith(_FetchHistory value, $Res Function(_FetchHistory) _then) = __$FetchHistoryCopyWithImpl;
@useResult
$Res call({
 String memberId
});




}
/// @nodoc
class __$FetchHistoryCopyWithImpl<$Res>
    implements _$FetchHistoryCopyWith<$Res> {
  __$FetchHistoryCopyWithImpl(this._self, this._then);

  final _FetchHistory _self;
  final $Res Function(_FetchHistory) _then;

/// Create a copy of AttendanceEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? memberId = null,}) {
  return _then(_FetchHistory(
null == memberId ? _self.memberId : memberId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _CheckIn implements AttendanceEvent {
  const _CheckIn(this.memberId, this.method);
  

 final  String memberId;
 final  String method;

/// Create a copy of AttendanceEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CheckInCopyWith<_CheckIn> get copyWith => __$CheckInCopyWithImpl<_CheckIn>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CheckIn&&(identical(other.memberId, memberId) || other.memberId == memberId)&&(identical(other.method, method) || other.method == method));
}


@override
int get hashCode => Object.hash(runtimeType,memberId,method);

@override
String toString() {
  return 'AttendanceEvent.checkIn(memberId: $memberId, method: $method)';
}


}

/// @nodoc
abstract mixin class _$CheckInCopyWith<$Res> implements $AttendanceEventCopyWith<$Res> {
  factory _$CheckInCopyWith(_CheckIn value, $Res Function(_CheckIn) _then) = __$CheckInCopyWithImpl;
@useResult
$Res call({
 String memberId, String method
});




}
/// @nodoc
class __$CheckInCopyWithImpl<$Res>
    implements _$CheckInCopyWith<$Res> {
  __$CheckInCopyWithImpl(this._self, this._then);

  final _CheckIn _self;
  final $Res Function(_CheckIn) _then;

/// Create a copy of AttendanceEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? memberId = null,Object? method = null,}) {
  return _then(_CheckIn(
null == memberId ? _self.memberId : memberId // ignore: cast_nullable_to_non_nullable
as String,null == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _CheckOut implements AttendanceEvent {
  const _CheckOut(this.attendanceId);
  

 final  String attendanceId;

/// Create a copy of AttendanceEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CheckOutCopyWith<_CheckOut> get copyWith => __$CheckOutCopyWithImpl<_CheckOut>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CheckOut&&(identical(other.attendanceId, attendanceId) || other.attendanceId == attendanceId));
}


@override
int get hashCode => Object.hash(runtimeType,attendanceId);

@override
String toString() {
  return 'AttendanceEvent.checkOut(attendanceId: $attendanceId)';
}


}

/// @nodoc
abstract mixin class _$CheckOutCopyWith<$Res> implements $AttendanceEventCopyWith<$Res> {
  factory _$CheckOutCopyWith(_CheckOut value, $Res Function(_CheckOut) _then) = __$CheckOutCopyWithImpl;
@useResult
$Res call({
 String attendanceId
});




}
/// @nodoc
class __$CheckOutCopyWithImpl<$Res>
    implements _$CheckOutCopyWith<$Res> {
  __$CheckOutCopyWithImpl(this._self, this._then);

  final _CheckOut _self;
  final $Res Function(_CheckOut) _then;

/// Create a copy of AttendanceEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? attendanceId = null,}) {
  return _then(_CheckOut(
null == attendanceId ? _self.attendanceId : attendanceId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _ScanQr implements AttendanceEvent {
  const _ScanQr(this.qrCode);
  

 final  String qrCode;

/// Create a copy of AttendanceEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ScanQrCopyWith<_ScanQr> get copyWith => __$ScanQrCopyWithImpl<_ScanQr>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ScanQr&&(identical(other.qrCode, qrCode) || other.qrCode == qrCode));
}


@override
int get hashCode => Object.hash(runtimeType,qrCode);

@override
String toString() {
  return 'AttendanceEvent.scanQr(qrCode: $qrCode)';
}


}

/// @nodoc
abstract mixin class _$ScanQrCopyWith<$Res> implements $AttendanceEventCopyWith<$Res> {
  factory _$ScanQrCopyWith(_ScanQr value, $Res Function(_ScanQr) _then) = __$ScanQrCopyWithImpl;
@useResult
$Res call({
 String qrCode
});




}
/// @nodoc
class __$ScanQrCopyWithImpl<$Res>
    implements _$ScanQrCopyWith<$Res> {
  __$ScanQrCopyWithImpl(this._self, this._then);

  final _ScanQr _self;
  final $Res Function(_ScanQr) _then;

/// Create a copy of AttendanceEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? qrCode = null,}) {
  return _then(_ScanQr(
null == qrCode ? _self.qrCode : qrCode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
