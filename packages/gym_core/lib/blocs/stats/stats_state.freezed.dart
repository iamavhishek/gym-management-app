// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stats_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$StatsState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StatsState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'StatsState()';
}


}

/// @nodoc
class $StatsStateCopyWith<$Res>  {
$StatsStateCopyWith(StatsState _, $Res Function(StatsState) __);
}


/// Adds pattern-matching-related methods to [StatsState].
extension StatsStatePatterns on StatsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Loading value)?  loading,TResult Function( _DashboardLoaded value)?  dashboardLoaded,TResult Function( _AnalyticsLoaded value)?  analyticsLoaded,TResult Function( _FinancialLoaded value)?  financialLoaded,TResult Function( _Error value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _DashboardLoaded() when dashboardLoaded != null:
return dashboardLoaded(_that);case _AnalyticsLoaded() when analyticsLoaded != null:
return analyticsLoaded(_that);case _FinancialLoaded() when financialLoaded != null:
return financialLoaded(_that);case _Error() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Loading value)  loading,required TResult Function( _DashboardLoaded value)  dashboardLoaded,required TResult Function( _AnalyticsLoaded value)  analyticsLoaded,required TResult Function( _FinancialLoaded value)  financialLoaded,required TResult Function( _Error value)  error,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Loading():
return loading(_that);case _DashboardLoaded():
return dashboardLoaded(_that);case _AnalyticsLoaded():
return analyticsLoaded(_that);case _FinancialLoaded():
return financialLoaded(_that);case _Error():
return error(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Loading value)?  loading,TResult? Function( _DashboardLoaded value)?  dashboardLoaded,TResult? Function( _AnalyticsLoaded value)?  analyticsLoaded,TResult? Function( _FinancialLoaded value)?  financialLoaded,TResult? Function( _Error value)?  error,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _DashboardLoaded() when dashboardLoaded != null:
return dashboardLoaded(_that);case _AnalyticsLoaded() when analyticsLoaded != null:
return analyticsLoaded(_that);case _FinancialLoaded() when financialLoaded != null:
return financialLoaded(_that);case _Error() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( Map<String, dynamic> stats)?  dashboardLoaded,TResult Function( Map<String, dynamic> analytics)?  analyticsLoaded,TResult Function( Map<String, dynamic> report)?  financialLoaded,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _DashboardLoaded() when dashboardLoaded != null:
return dashboardLoaded(_that.stats);case _AnalyticsLoaded() when analyticsLoaded != null:
return analyticsLoaded(_that.analytics);case _FinancialLoaded() when financialLoaded != null:
return financialLoaded(_that.report);case _Error() when error != null:
return error(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( Map<String, dynamic> stats)  dashboardLoaded,required TResult Function( Map<String, dynamic> analytics)  analyticsLoaded,required TResult Function( Map<String, dynamic> report)  financialLoaded,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Loading():
return loading();case _DashboardLoaded():
return dashboardLoaded(_that.stats);case _AnalyticsLoaded():
return analyticsLoaded(_that.analytics);case _FinancialLoaded():
return financialLoaded(_that.report);case _Error():
return error(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( Map<String, dynamic> stats)?  dashboardLoaded,TResult? Function( Map<String, dynamic> analytics)?  analyticsLoaded,TResult? Function( Map<String, dynamic> report)?  financialLoaded,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _DashboardLoaded() when dashboardLoaded != null:
return dashboardLoaded(_that.stats);case _AnalyticsLoaded() when analyticsLoaded != null:
return analyticsLoaded(_that.analytics);case _FinancialLoaded() when financialLoaded != null:
return financialLoaded(_that.report);case _Error() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements StatsState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'StatsState.initial()';
}


}




/// @nodoc


class _Loading implements StatsState {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'StatsState.loading()';
}


}




/// @nodoc


class _DashboardLoaded implements StatsState {
  const _DashboardLoaded(final  Map<String, dynamic> stats): _stats = stats;
  

 final  Map<String, dynamic> _stats;
 Map<String, dynamic> get stats {
  if (_stats is EqualUnmodifiableMapView) return _stats;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_stats);
}


/// Create a copy of StatsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DashboardLoadedCopyWith<_DashboardLoaded> get copyWith => __$DashboardLoadedCopyWithImpl<_DashboardLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DashboardLoaded&&const DeepCollectionEquality().equals(other._stats, _stats));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_stats));

@override
String toString() {
  return 'StatsState.dashboardLoaded(stats: $stats)';
}


}

/// @nodoc
abstract mixin class _$DashboardLoadedCopyWith<$Res> implements $StatsStateCopyWith<$Res> {
  factory _$DashboardLoadedCopyWith(_DashboardLoaded value, $Res Function(_DashboardLoaded) _then) = __$DashboardLoadedCopyWithImpl;
@useResult
$Res call({
 Map<String, dynamic> stats
});




}
/// @nodoc
class __$DashboardLoadedCopyWithImpl<$Res>
    implements _$DashboardLoadedCopyWith<$Res> {
  __$DashboardLoadedCopyWithImpl(this._self, this._then);

  final _DashboardLoaded _self;
  final $Res Function(_DashboardLoaded) _then;

/// Create a copy of StatsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? stats = null,}) {
  return _then(_DashboardLoaded(
null == stats ? _self._stats : stats // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}

/// @nodoc


class _AnalyticsLoaded implements StatsState {
  const _AnalyticsLoaded(final  Map<String, dynamic> analytics): _analytics = analytics;
  

 final  Map<String, dynamic> _analytics;
 Map<String, dynamic> get analytics {
  if (_analytics is EqualUnmodifiableMapView) return _analytics;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_analytics);
}


/// Create a copy of StatsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AnalyticsLoadedCopyWith<_AnalyticsLoaded> get copyWith => __$AnalyticsLoadedCopyWithImpl<_AnalyticsLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AnalyticsLoaded&&const DeepCollectionEquality().equals(other._analytics, _analytics));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_analytics));

@override
String toString() {
  return 'StatsState.analyticsLoaded(analytics: $analytics)';
}


}

/// @nodoc
abstract mixin class _$AnalyticsLoadedCopyWith<$Res> implements $StatsStateCopyWith<$Res> {
  factory _$AnalyticsLoadedCopyWith(_AnalyticsLoaded value, $Res Function(_AnalyticsLoaded) _then) = __$AnalyticsLoadedCopyWithImpl;
@useResult
$Res call({
 Map<String, dynamic> analytics
});




}
/// @nodoc
class __$AnalyticsLoadedCopyWithImpl<$Res>
    implements _$AnalyticsLoadedCopyWith<$Res> {
  __$AnalyticsLoadedCopyWithImpl(this._self, this._then);

  final _AnalyticsLoaded _self;
  final $Res Function(_AnalyticsLoaded) _then;

/// Create a copy of StatsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? analytics = null,}) {
  return _then(_AnalyticsLoaded(
null == analytics ? _self._analytics : analytics // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}

/// @nodoc


class _FinancialLoaded implements StatsState {
  const _FinancialLoaded(final  Map<String, dynamic> report): _report = report;
  

 final  Map<String, dynamic> _report;
 Map<String, dynamic> get report {
  if (_report is EqualUnmodifiableMapView) return _report;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_report);
}


/// Create a copy of StatsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FinancialLoadedCopyWith<_FinancialLoaded> get copyWith => __$FinancialLoadedCopyWithImpl<_FinancialLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FinancialLoaded&&const DeepCollectionEquality().equals(other._report, _report));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_report));

@override
String toString() {
  return 'StatsState.financialLoaded(report: $report)';
}


}

/// @nodoc
abstract mixin class _$FinancialLoadedCopyWith<$Res> implements $StatsStateCopyWith<$Res> {
  factory _$FinancialLoadedCopyWith(_FinancialLoaded value, $Res Function(_FinancialLoaded) _then) = __$FinancialLoadedCopyWithImpl;
@useResult
$Res call({
 Map<String, dynamic> report
});




}
/// @nodoc
class __$FinancialLoadedCopyWithImpl<$Res>
    implements _$FinancialLoadedCopyWith<$Res> {
  __$FinancialLoadedCopyWithImpl(this._self, this._then);

  final _FinancialLoaded _self;
  final $Res Function(_FinancialLoaded) _then;

/// Create a copy of StatsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? report = null,}) {
  return _then(_FinancialLoaded(
null == report ? _self._report : report // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}

/// @nodoc


class _Error implements StatsState {
  const _Error(this.message);
  

 final  String message;

/// Create a copy of StatsState
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
  return 'StatsState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorCopyWith<$Res> implements $StatsStateCopyWith<$Res> {
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

/// Create a copy of StatsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_Error(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
