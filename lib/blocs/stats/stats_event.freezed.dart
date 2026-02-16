// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stats_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$StatsEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StatsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'StatsEvent()';
}


}

/// @nodoc
class $StatsEventCopyWith<$Res>  {
$StatsEventCopyWith(StatsEvent _, $Res Function(StatsEvent) __);
}


/// Adds pattern-matching-related methods to [StatsEvent].
extension StatsEventPatterns on StatsEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _FetchDashboard value)?  fetchDashboard,TResult Function( _FetchAnalytics value)?  fetchAnalytics,TResult Function( _FetchFinancialReport value)?  fetchFinancialReport,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FetchDashboard() when fetchDashboard != null:
return fetchDashboard(_that);case _FetchAnalytics() when fetchAnalytics != null:
return fetchAnalytics(_that);case _FetchFinancialReport() when fetchFinancialReport != null:
return fetchFinancialReport(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _FetchDashboard value)  fetchDashboard,required TResult Function( _FetchAnalytics value)  fetchAnalytics,required TResult Function( _FetchFinancialReport value)  fetchFinancialReport,}){
final _that = this;
switch (_that) {
case _FetchDashboard():
return fetchDashboard(_that);case _FetchAnalytics():
return fetchAnalytics(_that);case _FetchFinancialReport():
return fetchFinancialReport(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _FetchDashboard value)?  fetchDashboard,TResult? Function( _FetchAnalytics value)?  fetchAnalytics,TResult? Function( _FetchFinancialReport value)?  fetchFinancialReport,}){
final _that = this;
switch (_that) {
case _FetchDashboard() when fetchDashboard != null:
return fetchDashboard(_that);case _FetchAnalytics() when fetchAnalytics != null:
return fetchAnalytics(_that);case _FetchFinancialReport() when fetchFinancialReport != null:
return fetchFinancialReport(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  fetchDashboard,TResult Function( String type)?  fetchAnalytics,TResult Function( String period)?  fetchFinancialReport,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FetchDashboard() when fetchDashboard != null:
return fetchDashboard();case _FetchAnalytics() when fetchAnalytics != null:
return fetchAnalytics(_that.type);case _FetchFinancialReport() when fetchFinancialReport != null:
return fetchFinancialReport(_that.period);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  fetchDashboard,required TResult Function( String type)  fetchAnalytics,required TResult Function( String period)  fetchFinancialReport,}) {final _that = this;
switch (_that) {
case _FetchDashboard():
return fetchDashboard();case _FetchAnalytics():
return fetchAnalytics(_that.type);case _FetchFinancialReport():
return fetchFinancialReport(_that.period);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  fetchDashboard,TResult? Function( String type)?  fetchAnalytics,TResult? Function( String period)?  fetchFinancialReport,}) {final _that = this;
switch (_that) {
case _FetchDashboard() when fetchDashboard != null:
return fetchDashboard();case _FetchAnalytics() when fetchAnalytics != null:
return fetchAnalytics(_that.type);case _FetchFinancialReport() when fetchFinancialReport != null:
return fetchFinancialReport(_that.period);case _:
  return null;

}
}

}

/// @nodoc


class _FetchDashboard implements StatsEvent {
  const _FetchDashboard();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FetchDashboard);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'StatsEvent.fetchDashboard()';
}


}




/// @nodoc


class _FetchAnalytics implements StatsEvent {
  const _FetchAnalytics(this.type);
  

 final  String type;

/// Create a copy of StatsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FetchAnalyticsCopyWith<_FetchAnalytics> get copyWith => __$FetchAnalyticsCopyWithImpl<_FetchAnalytics>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FetchAnalytics&&(identical(other.type, type) || other.type == type));
}


@override
int get hashCode => Object.hash(runtimeType,type);

@override
String toString() {
  return 'StatsEvent.fetchAnalytics(type: $type)';
}


}

/// @nodoc
abstract mixin class _$FetchAnalyticsCopyWith<$Res> implements $StatsEventCopyWith<$Res> {
  factory _$FetchAnalyticsCopyWith(_FetchAnalytics value, $Res Function(_FetchAnalytics) _then) = __$FetchAnalyticsCopyWithImpl;
@useResult
$Res call({
 String type
});




}
/// @nodoc
class __$FetchAnalyticsCopyWithImpl<$Res>
    implements _$FetchAnalyticsCopyWith<$Res> {
  __$FetchAnalyticsCopyWithImpl(this._self, this._then);

  final _FetchAnalytics _self;
  final $Res Function(_FetchAnalytics) _then;

/// Create a copy of StatsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? type = null,}) {
  return _then(_FetchAnalytics(
null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _FetchFinancialReport implements StatsEvent {
  const _FetchFinancialReport(this.period);
  

 final  String period;

/// Create a copy of StatsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FetchFinancialReportCopyWith<_FetchFinancialReport> get copyWith => __$FetchFinancialReportCopyWithImpl<_FetchFinancialReport>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FetchFinancialReport&&(identical(other.period, period) || other.period == period));
}


@override
int get hashCode => Object.hash(runtimeType,period);

@override
String toString() {
  return 'StatsEvent.fetchFinancialReport(period: $period)';
}


}

/// @nodoc
abstract mixin class _$FetchFinancialReportCopyWith<$Res> implements $StatsEventCopyWith<$Res> {
  factory _$FetchFinancialReportCopyWith(_FetchFinancialReport value, $Res Function(_FetchFinancialReport) _then) = __$FetchFinancialReportCopyWithImpl;
@useResult
$Res call({
 String period
});




}
/// @nodoc
class __$FetchFinancialReportCopyWithImpl<$Res>
    implements _$FetchFinancialReportCopyWith<$Res> {
  __$FetchFinancialReportCopyWithImpl(this._self, this._then);

  final _FetchFinancialReport _self;
  final $Res Function(_FetchFinancialReport) _then;

/// Create a copy of StatsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? period = null,}) {
  return _then(_FetchFinancialReport(
null == period ? _self.period : period // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
