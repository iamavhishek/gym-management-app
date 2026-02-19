// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NotificationEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NotificationEvent()';
}


}

/// @nodoc
class $NotificationEventCopyWith<$Res>  {
$NotificationEventCopyWith(NotificationEvent _, $Res Function(NotificationEvent) __);
}


/// Adds pattern-matching-related methods to [NotificationEvent].
extension NotificationEventPatterns on NotificationEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _FetchNotifications value)?  fetchNotifications,TResult Function( _MarkAsRead value)?  markAsRead,TResult Function( _MarkAllAsRead value)?  markAllAsRead,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FetchNotifications() when fetchNotifications != null:
return fetchNotifications(_that);case _MarkAsRead() when markAsRead != null:
return markAsRead(_that);case _MarkAllAsRead() when markAllAsRead != null:
return markAllAsRead(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _FetchNotifications value)  fetchNotifications,required TResult Function( _MarkAsRead value)  markAsRead,required TResult Function( _MarkAllAsRead value)  markAllAsRead,}){
final _that = this;
switch (_that) {
case _FetchNotifications():
return fetchNotifications(_that);case _MarkAsRead():
return markAsRead(_that);case _MarkAllAsRead():
return markAllAsRead(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _FetchNotifications value)?  fetchNotifications,TResult? Function( _MarkAsRead value)?  markAsRead,TResult? Function( _MarkAllAsRead value)?  markAllAsRead,}){
final _that = this;
switch (_that) {
case _FetchNotifications() when fetchNotifications != null:
return fetchNotifications(_that);case _MarkAsRead() when markAsRead != null:
return markAsRead(_that);case _MarkAllAsRead() when markAllAsRead != null:
return markAllAsRead(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  fetchNotifications,TResult Function( String id)?  markAsRead,TResult Function()?  markAllAsRead,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FetchNotifications() when fetchNotifications != null:
return fetchNotifications();case _MarkAsRead() when markAsRead != null:
return markAsRead(_that.id);case _MarkAllAsRead() when markAllAsRead != null:
return markAllAsRead();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  fetchNotifications,required TResult Function( String id)  markAsRead,required TResult Function()  markAllAsRead,}) {final _that = this;
switch (_that) {
case _FetchNotifications():
return fetchNotifications();case _MarkAsRead():
return markAsRead(_that.id);case _MarkAllAsRead():
return markAllAsRead();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  fetchNotifications,TResult? Function( String id)?  markAsRead,TResult? Function()?  markAllAsRead,}) {final _that = this;
switch (_that) {
case _FetchNotifications() when fetchNotifications != null:
return fetchNotifications();case _MarkAsRead() when markAsRead != null:
return markAsRead(_that.id);case _MarkAllAsRead() when markAllAsRead != null:
return markAllAsRead();case _:
  return null;

}
}

}

/// @nodoc


class _FetchNotifications implements NotificationEvent {
  const _FetchNotifications();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FetchNotifications);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NotificationEvent.fetchNotifications()';
}


}




/// @nodoc


class _MarkAsRead implements NotificationEvent {
  const _MarkAsRead(this.id);
  

 final  String id;

/// Create a copy of NotificationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MarkAsReadCopyWith<_MarkAsRead> get copyWith => __$MarkAsReadCopyWithImpl<_MarkAsRead>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MarkAsRead&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'NotificationEvent.markAsRead(id: $id)';
}


}

/// @nodoc
abstract mixin class _$MarkAsReadCopyWith<$Res> implements $NotificationEventCopyWith<$Res> {
  factory _$MarkAsReadCopyWith(_MarkAsRead value, $Res Function(_MarkAsRead) _then) = __$MarkAsReadCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class __$MarkAsReadCopyWithImpl<$Res>
    implements _$MarkAsReadCopyWith<$Res> {
  __$MarkAsReadCopyWithImpl(this._self, this._then);

  final _MarkAsRead _self;
  final $Res Function(_MarkAsRead) _then;

/// Create a copy of NotificationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_MarkAsRead(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _MarkAllAsRead implements NotificationEvent {
  const _MarkAllAsRead();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MarkAllAsRead);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NotificationEvent.markAllAsRead()';
}


}




// dart format on
