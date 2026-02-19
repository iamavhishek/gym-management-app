// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PaymentEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PaymentEvent()';
}


}

/// @nodoc
class $PaymentEventCopyWith<$Res>  {
$PaymentEventCopyWith(PaymentEvent _, $Res Function(PaymentEvent) __);
}


/// Adds pattern-matching-related methods to [PaymentEvent].
extension PaymentEventPatterns on PaymentEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _FetchPayments value)?  fetchPayments,TResult Function( _CreatePayment value)?  createPayment,TResult Function( _UpdatePayment value)?  updatePayment,TResult Function( _DeletePayment value)?  deletePayment,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FetchPayments() when fetchPayments != null:
return fetchPayments(_that);case _CreatePayment() when createPayment != null:
return createPayment(_that);case _UpdatePayment() when updatePayment != null:
return updatePayment(_that);case _DeletePayment() when deletePayment != null:
return deletePayment(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _FetchPayments value)  fetchPayments,required TResult Function( _CreatePayment value)  createPayment,required TResult Function( _UpdatePayment value)  updatePayment,required TResult Function( _DeletePayment value)  deletePayment,}){
final _that = this;
switch (_that) {
case _FetchPayments():
return fetchPayments(_that);case _CreatePayment():
return createPayment(_that);case _UpdatePayment():
return updatePayment(_that);case _DeletePayment():
return deletePayment(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _FetchPayments value)?  fetchPayments,TResult? Function( _CreatePayment value)?  createPayment,TResult? Function( _UpdatePayment value)?  updatePayment,TResult? Function( _DeletePayment value)?  deletePayment,}){
final _that = this;
switch (_that) {
case _FetchPayments() when fetchPayments != null:
return fetchPayments(_that);case _CreatePayment() when createPayment != null:
return createPayment(_that);case _UpdatePayment() when updatePayment != null:
return updatePayment(_that);case _DeletePayment() when deletePayment != null:
return deletePayment(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int page,  int limit)?  fetchPayments,TResult Function( String? membershipId,  String? memberId,  String? planId,  String amount,  String paymentMethod,  String? startDate,  String? notes)?  createPayment,TResult Function( String id,  String? amount,  String? paymentMethod,  String? status,  String? notes)?  updatePayment,TResult Function( String id)?  deletePayment,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FetchPayments() when fetchPayments != null:
return fetchPayments(_that.page,_that.limit);case _CreatePayment() when createPayment != null:
return createPayment(_that.membershipId,_that.memberId,_that.planId,_that.amount,_that.paymentMethod,_that.startDate,_that.notes);case _UpdatePayment() when updatePayment != null:
return updatePayment(_that.id,_that.amount,_that.paymentMethod,_that.status,_that.notes);case _DeletePayment() when deletePayment != null:
return deletePayment(_that.id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int page,  int limit)  fetchPayments,required TResult Function( String? membershipId,  String? memberId,  String? planId,  String amount,  String paymentMethod,  String? startDate,  String? notes)  createPayment,required TResult Function( String id,  String? amount,  String? paymentMethod,  String? status,  String? notes)  updatePayment,required TResult Function( String id)  deletePayment,}) {final _that = this;
switch (_that) {
case _FetchPayments():
return fetchPayments(_that.page,_that.limit);case _CreatePayment():
return createPayment(_that.membershipId,_that.memberId,_that.planId,_that.amount,_that.paymentMethod,_that.startDate,_that.notes);case _UpdatePayment():
return updatePayment(_that.id,_that.amount,_that.paymentMethod,_that.status,_that.notes);case _DeletePayment():
return deletePayment(_that.id);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int page,  int limit)?  fetchPayments,TResult? Function( String? membershipId,  String? memberId,  String? planId,  String amount,  String paymentMethod,  String? startDate,  String? notes)?  createPayment,TResult? Function( String id,  String? amount,  String? paymentMethod,  String? status,  String? notes)?  updatePayment,TResult? Function( String id)?  deletePayment,}) {final _that = this;
switch (_that) {
case _FetchPayments() when fetchPayments != null:
return fetchPayments(_that.page,_that.limit);case _CreatePayment() when createPayment != null:
return createPayment(_that.membershipId,_that.memberId,_that.planId,_that.amount,_that.paymentMethod,_that.startDate,_that.notes);case _UpdatePayment() when updatePayment != null:
return updatePayment(_that.id,_that.amount,_that.paymentMethod,_that.status,_that.notes);case _DeletePayment() when deletePayment != null:
return deletePayment(_that.id);case _:
  return null;

}
}

}

/// @nodoc


class _FetchPayments implements PaymentEvent {
  const _FetchPayments({this.page = 1, this.limit = 20});
  

@JsonKey() final  int page;
@JsonKey() final  int limit;

/// Create a copy of PaymentEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FetchPaymentsCopyWith<_FetchPayments> get copyWith => __$FetchPaymentsCopyWithImpl<_FetchPayments>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FetchPayments&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit));
}


@override
int get hashCode => Object.hash(runtimeType,page,limit);

@override
String toString() {
  return 'PaymentEvent.fetchPayments(page: $page, limit: $limit)';
}


}

/// @nodoc
abstract mixin class _$FetchPaymentsCopyWith<$Res> implements $PaymentEventCopyWith<$Res> {
  factory _$FetchPaymentsCopyWith(_FetchPayments value, $Res Function(_FetchPayments) _then) = __$FetchPaymentsCopyWithImpl;
@useResult
$Res call({
 int page, int limit
});




}
/// @nodoc
class __$FetchPaymentsCopyWithImpl<$Res>
    implements _$FetchPaymentsCopyWith<$Res> {
  __$FetchPaymentsCopyWithImpl(this._self, this._then);

  final _FetchPayments _self;
  final $Res Function(_FetchPayments) _then;

/// Create a copy of PaymentEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? page = null,Object? limit = null,}) {
  return _then(_FetchPayments(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _CreatePayment implements PaymentEvent {
  const _CreatePayment({this.membershipId, this.memberId, this.planId, required this.amount, required this.paymentMethod, this.startDate, this.notes});
  

 final  String? membershipId;
 final  String? memberId;
 final  String? planId;
 final  String amount;
 final  String paymentMethod;
 final  String? startDate;
 final  String? notes;

/// Create a copy of PaymentEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreatePaymentCopyWith<_CreatePayment> get copyWith => __$CreatePaymentCopyWithImpl<_CreatePayment>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreatePayment&&(identical(other.membershipId, membershipId) || other.membershipId == membershipId)&&(identical(other.memberId, memberId) || other.memberId == memberId)&&(identical(other.planId, planId) || other.planId == planId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.paymentMethod, paymentMethod) || other.paymentMethod == paymentMethod)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.notes, notes) || other.notes == notes));
}


@override
int get hashCode => Object.hash(runtimeType,membershipId,memberId,planId,amount,paymentMethod,startDate,notes);

@override
String toString() {
  return 'PaymentEvent.createPayment(membershipId: $membershipId, memberId: $memberId, planId: $planId, amount: $amount, paymentMethod: $paymentMethod, startDate: $startDate, notes: $notes)';
}


}

/// @nodoc
abstract mixin class _$CreatePaymentCopyWith<$Res> implements $PaymentEventCopyWith<$Res> {
  factory _$CreatePaymentCopyWith(_CreatePayment value, $Res Function(_CreatePayment) _then) = __$CreatePaymentCopyWithImpl;
@useResult
$Res call({
 String? membershipId, String? memberId, String? planId, String amount, String paymentMethod, String? startDate, String? notes
});




}
/// @nodoc
class __$CreatePaymentCopyWithImpl<$Res>
    implements _$CreatePaymentCopyWith<$Res> {
  __$CreatePaymentCopyWithImpl(this._self, this._then);

  final _CreatePayment _self;
  final $Res Function(_CreatePayment) _then;

/// Create a copy of PaymentEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? membershipId = freezed,Object? memberId = freezed,Object? planId = freezed,Object? amount = null,Object? paymentMethod = null,Object? startDate = freezed,Object? notes = freezed,}) {
  return _then(_CreatePayment(
membershipId: freezed == membershipId ? _self.membershipId : membershipId // ignore: cast_nullable_to_non_nullable
as String?,memberId: freezed == memberId ? _self.memberId : memberId // ignore: cast_nullable_to_non_nullable
as String?,planId: freezed == planId ? _self.planId : planId // ignore: cast_nullable_to_non_nullable
as String?,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String,paymentMethod: null == paymentMethod ? _self.paymentMethod : paymentMethod // ignore: cast_nullable_to_non_nullable
as String,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as String?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _UpdatePayment implements PaymentEvent {
  const _UpdatePayment({required this.id, this.amount, this.paymentMethod, this.status, this.notes});
  

 final  String id;
 final  String? amount;
 final  String? paymentMethod;
 final  String? status;
 final  String? notes;

/// Create a copy of PaymentEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdatePaymentCopyWith<_UpdatePayment> get copyWith => __$UpdatePaymentCopyWithImpl<_UpdatePayment>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdatePayment&&(identical(other.id, id) || other.id == id)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.paymentMethod, paymentMethod) || other.paymentMethod == paymentMethod)&&(identical(other.status, status) || other.status == status)&&(identical(other.notes, notes) || other.notes == notes));
}


@override
int get hashCode => Object.hash(runtimeType,id,amount,paymentMethod,status,notes);

@override
String toString() {
  return 'PaymentEvent.updatePayment(id: $id, amount: $amount, paymentMethod: $paymentMethod, status: $status, notes: $notes)';
}


}

/// @nodoc
abstract mixin class _$UpdatePaymentCopyWith<$Res> implements $PaymentEventCopyWith<$Res> {
  factory _$UpdatePaymentCopyWith(_UpdatePayment value, $Res Function(_UpdatePayment) _then) = __$UpdatePaymentCopyWithImpl;
@useResult
$Res call({
 String id, String? amount, String? paymentMethod, String? status, String? notes
});




}
/// @nodoc
class __$UpdatePaymentCopyWithImpl<$Res>
    implements _$UpdatePaymentCopyWith<$Res> {
  __$UpdatePaymentCopyWithImpl(this._self, this._then);

  final _UpdatePayment _self;
  final $Res Function(_UpdatePayment) _then;

/// Create a copy of PaymentEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,Object? amount = freezed,Object? paymentMethod = freezed,Object? status = freezed,Object? notes = freezed,}) {
  return _then(_UpdatePayment(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String?,paymentMethod: freezed == paymentMethod ? _self.paymentMethod : paymentMethod // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _DeletePayment implements PaymentEvent {
  const _DeletePayment(this.id);
  

 final  String id;

/// Create a copy of PaymentEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeletePaymentCopyWith<_DeletePayment> get copyWith => __$DeletePaymentCopyWithImpl<_DeletePayment>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeletePayment&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'PaymentEvent.deletePayment(id: $id)';
}


}

/// @nodoc
abstract mixin class _$DeletePaymentCopyWith<$Res> implements $PaymentEventCopyWith<$Res> {
  factory _$DeletePaymentCopyWith(_DeletePayment value, $Res Function(_DeletePayment) _then) = __$DeletePaymentCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class __$DeletePaymentCopyWithImpl<$Res>
    implements _$DeletePaymentCopyWith<$Res> {
  __$DeletePaymentCopyWithImpl(this._self, this._then);

  final _DeletePayment _self;
  final $Res Function(_DeletePayment) _then;

/// Create a copy of PaymentEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_DeletePayment(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
