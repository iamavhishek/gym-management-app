// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PaymentModel {

 String get id; String get membershipId; String? get memberId; String get amount; String get paymentMethod;// 'cash', 'bank_transfer', 'card', 'upi', 'wallet'
 String get status;// 'completed', 'pending', 'failed', 'refunded'
 DateTime? get paymentDate; String? get transactionId; String? get invoiceNumber; String? get notes; String? get dueDate; String? get promoCode; String? get discountAmount;
/// Create a copy of PaymentModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentModelCopyWith<PaymentModel> get copyWith => _$PaymentModelCopyWithImpl<PaymentModel>(this as PaymentModel, _$identity);

  /// Serializes this PaymentModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentModel&&(identical(other.id, id) || other.id == id)&&(identical(other.membershipId, membershipId) || other.membershipId == membershipId)&&(identical(other.memberId, memberId) || other.memberId == memberId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.paymentMethod, paymentMethod) || other.paymentMethod == paymentMethod)&&(identical(other.status, status) || other.status == status)&&(identical(other.paymentDate, paymentDate) || other.paymentDate == paymentDate)&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.invoiceNumber, invoiceNumber) || other.invoiceNumber == invoiceNumber)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.dueDate, dueDate) || other.dueDate == dueDate)&&(identical(other.promoCode, promoCode) || other.promoCode == promoCode)&&(identical(other.discountAmount, discountAmount) || other.discountAmount == discountAmount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,membershipId,memberId,amount,paymentMethod,status,paymentDate,transactionId,invoiceNumber,notes,dueDate,promoCode,discountAmount);

@override
String toString() {
  return 'PaymentModel(id: $id, membershipId: $membershipId, memberId: $memberId, amount: $amount, paymentMethod: $paymentMethod, status: $status, paymentDate: $paymentDate, transactionId: $transactionId, invoiceNumber: $invoiceNumber, notes: $notes, dueDate: $dueDate, promoCode: $promoCode, discountAmount: $discountAmount)';
}


}

/// @nodoc
abstract mixin class $PaymentModelCopyWith<$Res>  {
  factory $PaymentModelCopyWith(PaymentModel value, $Res Function(PaymentModel) _then) = _$PaymentModelCopyWithImpl;
@useResult
$Res call({
 String id, String membershipId, String? memberId, String amount, String paymentMethod, String status, DateTime? paymentDate, String? transactionId, String? invoiceNumber, String? notes, String? dueDate, String? promoCode, String? discountAmount
});




}
/// @nodoc
class _$PaymentModelCopyWithImpl<$Res>
    implements $PaymentModelCopyWith<$Res> {
  _$PaymentModelCopyWithImpl(this._self, this._then);

  final PaymentModel _self;
  final $Res Function(PaymentModel) _then;

/// Create a copy of PaymentModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? membershipId = null,Object? memberId = freezed,Object? amount = null,Object? paymentMethod = null,Object? status = null,Object? paymentDate = freezed,Object? transactionId = freezed,Object? invoiceNumber = freezed,Object? notes = freezed,Object? dueDate = freezed,Object? promoCode = freezed,Object? discountAmount = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,membershipId: null == membershipId ? _self.membershipId : membershipId // ignore: cast_nullable_to_non_nullable
as String,memberId: freezed == memberId ? _self.memberId : memberId // ignore: cast_nullable_to_non_nullable
as String?,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String,paymentMethod: null == paymentMethod ? _self.paymentMethod : paymentMethod // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,paymentDate: freezed == paymentDate ? _self.paymentDate : paymentDate // ignore: cast_nullable_to_non_nullable
as DateTime?,transactionId: freezed == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as String?,invoiceNumber: freezed == invoiceNumber ? _self.invoiceNumber : invoiceNumber // ignore: cast_nullable_to_non_nullable
as String?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,dueDate: freezed == dueDate ? _self.dueDate : dueDate // ignore: cast_nullable_to_non_nullable
as String?,promoCode: freezed == promoCode ? _self.promoCode : promoCode // ignore: cast_nullable_to_non_nullable
as String?,discountAmount: freezed == discountAmount ? _self.discountAmount : discountAmount // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PaymentModel].
extension PaymentModelPatterns on PaymentModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaymentModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaymentModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaymentModel value)  $default,){
final _that = this;
switch (_that) {
case _PaymentModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaymentModel value)?  $default,){
final _that = this;
switch (_that) {
case _PaymentModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String membershipId,  String? memberId,  String amount,  String paymentMethod,  String status,  DateTime? paymentDate,  String? transactionId,  String? invoiceNumber,  String? notes,  String? dueDate,  String? promoCode,  String? discountAmount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaymentModel() when $default != null:
return $default(_that.id,_that.membershipId,_that.memberId,_that.amount,_that.paymentMethod,_that.status,_that.paymentDate,_that.transactionId,_that.invoiceNumber,_that.notes,_that.dueDate,_that.promoCode,_that.discountAmount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String membershipId,  String? memberId,  String amount,  String paymentMethod,  String status,  DateTime? paymentDate,  String? transactionId,  String? invoiceNumber,  String? notes,  String? dueDate,  String? promoCode,  String? discountAmount)  $default,) {final _that = this;
switch (_that) {
case _PaymentModel():
return $default(_that.id,_that.membershipId,_that.memberId,_that.amount,_that.paymentMethod,_that.status,_that.paymentDate,_that.transactionId,_that.invoiceNumber,_that.notes,_that.dueDate,_that.promoCode,_that.discountAmount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String membershipId,  String? memberId,  String amount,  String paymentMethod,  String status,  DateTime? paymentDate,  String? transactionId,  String? invoiceNumber,  String? notes,  String? dueDate,  String? promoCode,  String? discountAmount)?  $default,) {final _that = this;
switch (_that) {
case _PaymentModel() when $default != null:
return $default(_that.id,_that.membershipId,_that.memberId,_that.amount,_that.paymentMethod,_that.status,_that.paymentDate,_that.transactionId,_that.invoiceNumber,_that.notes,_that.dueDate,_that.promoCode,_that.discountAmount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaymentModel implements PaymentModel {
  const _PaymentModel({required this.id, required this.membershipId, this.memberId, required this.amount, required this.paymentMethod, required this.status, this.paymentDate, this.transactionId, this.invoiceNumber, this.notes, this.dueDate, this.promoCode, this.discountAmount});
  factory _PaymentModel.fromJson(Map<String, dynamic> json) => _$PaymentModelFromJson(json);

@override final  String id;
@override final  String membershipId;
@override final  String? memberId;
@override final  String amount;
@override final  String paymentMethod;
// 'cash', 'bank_transfer', 'card', 'upi', 'wallet'
@override final  String status;
// 'completed', 'pending', 'failed', 'refunded'
@override final  DateTime? paymentDate;
@override final  String? transactionId;
@override final  String? invoiceNumber;
@override final  String? notes;
@override final  String? dueDate;
@override final  String? promoCode;
@override final  String? discountAmount;

/// Create a copy of PaymentModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentModelCopyWith<_PaymentModel> get copyWith => __$PaymentModelCopyWithImpl<_PaymentModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaymentModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentModel&&(identical(other.id, id) || other.id == id)&&(identical(other.membershipId, membershipId) || other.membershipId == membershipId)&&(identical(other.memberId, memberId) || other.memberId == memberId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.paymentMethod, paymentMethod) || other.paymentMethod == paymentMethod)&&(identical(other.status, status) || other.status == status)&&(identical(other.paymentDate, paymentDate) || other.paymentDate == paymentDate)&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.invoiceNumber, invoiceNumber) || other.invoiceNumber == invoiceNumber)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.dueDate, dueDate) || other.dueDate == dueDate)&&(identical(other.promoCode, promoCode) || other.promoCode == promoCode)&&(identical(other.discountAmount, discountAmount) || other.discountAmount == discountAmount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,membershipId,memberId,amount,paymentMethod,status,paymentDate,transactionId,invoiceNumber,notes,dueDate,promoCode,discountAmount);

@override
String toString() {
  return 'PaymentModel(id: $id, membershipId: $membershipId, memberId: $memberId, amount: $amount, paymentMethod: $paymentMethod, status: $status, paymentDate: $paymentDate, transactionId: $transactionId, invoiceNumber: $invoiceNumber, notes: $notes, dueDate: $dueDate, promoCode: $promoCode, discountAmount: $discountAmount)';
}


}

/// @nodoc
abstract mixin class _$PaymentModelCopyWith<$Res> implements $PaymentModelCopyWith<$Res> {
  factory _$PaymentModelCopyWith(_PaymentModel value, $Res Function(_PaymentModel) _then) = __$PaymentModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String membershipId, String? memberId, String amount, String paymentMethod, String status, DateTime? paymentDate, String? transactionId, String? invoiceNumber, String? notes, String? dueDate, String? promoCode, String? discountAmount
});




}
/// @nodoc
class __$PaymentModelCopyWithImpl<$Res>
    implements _$PaymentModelCopyWith<$Res> {
  __$PaymentModelCopyWithImpl(this._self, this._then);

  final _PaymentModel _self;
  final $Res Function(_PaymentModel) _then;

/// Create a copy of PaymentModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? membershipId = null,Object? memberId = freezed,Object? amount = null,Object? paymentMethod = null,Object? status = null,Object? paymentDate = freezed,Object? transactionId = freezed,Object? invoiceNumber = freezed,Object? notes = freezed,Object? dueDate = freezed,Object? promoCode = freezed,Object? discountAmount = freezed,}) {
  return _then(_PaymentModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,membershipId: null == membershipId ? _self.membershipId : membershipId // ignore: cast_nullable_to_non_nullable
as String,memberId: freezed == memberId ? _self.memberId : memberId // ignore: cast_nullable_to_non_nullable
as String?,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String,paymentMethod: null == paymentMethod ? _self.paymentMethod : paymentMethod // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,paymentDate: freezed == paymentDate ? _self.paymentDate : paymentDate // ignore: cast_nullable_to_non_nullable
as DateTime?,transactionId: freezed == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as String?,invoiceNumber: freezed == invoiceNumber ? _self.invoiceNumber : invoiceNumber // ignore: cast_nullable_to_non_nullable
as String?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,dueDate: freezed == dueDate ? _self.dueDate : dueDate // ignore: cast_nullable_to_non_nullable
as String?,promoCode: freezed == promoCode ? _self.promoCode : promoCode // ignore: cast_nullable_to_non_nullable
as String?,discountAmount: freezed == discountAmount ? _self.discountAmount : discountAmount // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$MembershipPlanModel {

 String get id; String get name; String get description; String get price; int get duration; String? get type;// 'regular', 'premium', 'trial'
 bool get isActive; List<String> get features;
/// Create a copy of MembershipPlanModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MembershipPlanModelCopyWith<MembershipPlanModel> get copyWith => _$MembershipPlanModelCopyWithImpl<MembershipPlanModel>(this as MembershipPlanModel, _$identity);

  /// Serializes this MembershipPlanModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MembershipPlanModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.price, price) || other.price == price)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.type, type) || other.type == type)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&const DeepCollectionEquality().equals(other.features, features));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,price,duration,type,isActive,const DeepCollectionEquality().hash(features));

@override
String toString() {
  return 'MembershipPlanModel(id: $id, name: $name, description: $description, price: $price, duration: $duration, type: $type, isActive: $isActive, features: $features)';
}


}

/// @nodoc
abstract mixin class $MembershipPlanModelCopyWith<$Res>  {
  factory $MembershipPlanModelCopyWith(MembershipPlanModel value, $Res Function(MembershipPlanModel) _then) = _$MembershipPlanModelCopyWithImpl;
@useResult
$Res call({
 String id, String name, String description, String price, int duration, String? type, bool isActive, List<String> features
});




}
/// @nodoc
class _$MembershipPlanModelCopyWithImpl<$Res>
    implements $MembershipPlanModelCopyWith<$Res> {
  _$MembershipPlanModelCopyWithImpl(this._self, this._then);

  final MembershipPlanModel _self;
  final $Res Function(MembershipPlanModel) _then;

/// Create a copy of MembershipPlanModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? description = null,Object? price = null,Object? duration = null,Object? type = freezed,Object? isActive = null,Object? features = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as int,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,features: null == features ? _self.features : features // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [MembershipPlanModel].
extension MembershipPlanModelPatterns on MembershipPlanModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MembershipPlanModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MembershipPlanModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MembershipPlanModel value)  $default,){
final _that = this;
switch (_that) {
case _MembershipPlanModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MembershipPlanModel value)?  $default,){
final _that = this;
switch (_that) {
case _MembershipPlanModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String description,  String price,  int duration,  String? type,  bool isActive,  List<String> features)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MembershipPlanModel() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.price,_that.duration,_that.type,_that.isActive,_that.features);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String description,  String price,  int duration,  String? type,  bool isActive,  List<String> features)  $default,) {final _that = this;
switch (_that) {
case _MembershipPlanModel():
return $default(_that.id,_that.name,_that.description,_that.price,_that.duration,_that.type,_that.isActive,_that.features);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String description,  String price,  int duration,  String? type,  bool isActive,  List<String> features)?  $default,) {final _that = this;
switch (_that) {
case _MembershipPlanModel() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.price,_that.duration,_that.type,_that.isActive,_that.features);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MembershipPlanModel implements MembershipPlanModel {
  const _MembershipPlanModel({required this.id, required this.name, this.description = '', required this.price, required this.duration, this.type, this.isActive = true, final  List<String> features = const []}): _features = features;
  factory _MembershipPlanModel.fromJson(Map<String, dynamic> json) => _$MembershipPlanModelFromJson(json);

@override final  String id;
@override final  String name;
@override@JsonKey() final  String description;
@override final  String price;
@override final  int duration;
@override final  String? type;
// 'regular', 'premium', 'trial'
@override@JsonKey() final  bool isActive;
 final  List<String> _features;
@override@JsonKey() List<String> get features {
  if (_features is EqualUnmodifiableListView) return _features;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_features);
}


/// Create a copy of MembershipPlanModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MembershipPlanModelCopyWith<_MembershipPlanModel> get copyWith => __$MembershipPlanModelCopyWithImpl<_MembershipPlanModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MembershipPlanModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MembershipPlanModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.price, price) || other.price == price)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.type, type) || other.type == type)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&const DeepCollectionEquality().equals(other._features, _features));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,price,duration,type,isActive,const DeepCollectionEquality().hash(_features));

@override
String toString() {
  return 'MembershipPlanModel(id: $id, name: $name, description: $description, price: $price, duration: $duration, type: $type, isActive: $isActive, features: $features)';
}


}

/// @nodoc
abstract mixin class _$MembershipPlanModelCopyWith<$Res> implements $MembershipPlanModelCopyWith<$Res> {
  factory _$MembershipPlanModelCopyWith(_MembershipPlanModel value, $Res Function(_MembershipPlanModel) _then) = __$MembershipPlanModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String description, String price, int duration, String? type, bool isActive, List<String> features
});




}
/// @nodoc
class __$MembershipPlanModelCopyWithImpl<$Res>
    implements _$MembershipPlanModelCopyWith<$Res> {
  __$MembershipPlanModelCopyWithImpl(this._self, this._then);

  final _MembershipPlanModel _self;
  final $Res Function(_MembershipPlanModel) _then;

/// Create a copy of MembershipPlanModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? description = null,Object? price = null,Object? duration = null,Object? type = freezed,Object? isActive = null,Object? features = null,}) {
  return _then(_MembershipPlanModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as int,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,features: null == features ? _self._features : features // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
