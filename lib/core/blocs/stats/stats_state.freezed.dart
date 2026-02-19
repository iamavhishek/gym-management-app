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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( StatsInitial value)?  initial,TResult Function( StatsLoading value)?  loading,TResult Function( StatsDashboardLoaded value)?  dashboardLoaded,TResult Function( StatsAnalyticsLoaded value)?  analyticsLoaded,TResult Function( StatsFinancialLoaded value)?  financialLoaded,TResult Function( StatsError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case StatsInitial() when initial != null:
return initial(_that);case StatsLoading() when loading != null:
return loading(_that);case StatsDashboardLoaded() when dashboardLoaded != null:
return dashboardLoaded(_that);case StatsAnalyticsLoaded() when analyticsLoaded != null:
return analyticsLoaded(_that);case StatsFinancialLoaded() when financialLoaded != null:
return financialLoaded(_that);case StatsError() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( StatsInitial value)  initial,required TResult Function( StatsLoading value)  loading,required TResult Function( StatsDashboardLoaded value)  dashboardLoaded,required TResult Function( StatsAnalyticsLoaded value)  analyticsLoaded,required TResult Function( StatsFinancialLoaded value)  financialLoaded,required TResult Function( StatsError value)  error,}){
final _that = this;
switch (_that) {
case StatsInitial():
return initial(_that);case StatsLoading():
return loading(_that);case StatsDashboardLoaded():
return dashboardLoaded(_that);case StatsAnalyticsLoaded():
return analyticsLoaded(_that);case StatsFinancialLoaded():
return financialLoaded(_that);case StatsError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( StatsInitial value)?  initial,TResult? Function( StatsLoading value)?  loading,TResult? Function( StatsDashboardLoaded value)?  dashboardLoaded,TResult? Function( StatsAnalyticsLoaded value)?  analyticsLoaded,TResult? Function( StatsFinancialLoaded value)?  financialLoaded,TResult? Function( StatsError value)?  error,}){
final _that = this;
switch (_that) {
case StatsInitial() when initial != null:
return initial(_that);case StatsLoading() when loading != null:
return loading(_that);case StatsDashboardLoaded() when dashboardLoaded != null:
return dashboardLoaded(_that);case StatsAnalyticsLoaded() when analyticsLoaded != null:
return analyticsLoaded(_that);case StatsFinancialLoaded() when financialLoaded != null:
return financialLoaded(_that);case StatsError() when error != null:
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
case StatsInitial() when initial != null:
return initial();case StatsLoading() when loading != null:
return loading();case StatsDashboardLoaded() when dashboardLoaded != null:
return dashboardLoaded(_that.stats);case StatsAnalyticsLoaded() when analyticsLoaded != null:
return analyticsLoaded(_that.analytics);case StatsFinancialLoaded() when financialLoaded != null:
return financialLoaded(_that.report);case StatsError() when error != null:
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
case StatsInitial():
return initial();case StatsLoading():
return loading();case StatsDashboardLoaded():
return dashboardLoaded(_that.stats);case StatsAnalyticsLoaded():
return analyticsLoaded(_that.analytics);case StatsFinancialLoaded():
return financialLoaded(_that.report);case StatsError():
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
case StatsInitial() when initial != null:
return initial();case StatsLoading() when loading != null:
return loading();case StatsDashboardLoaded() when dashboardLoaded != null:
return dashboardLoaded(_that.stats);case StatsAnalyticsLoaded() when analyticsLoaded != null:
return analyticsLoaded(_that.analytics);case StatsFinancialLoaded() when financialLoaded != null:
return financialLoaded(_that.report);case StatsError() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class StatsInitial implements StatsState {
  const StatsInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StatsInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'StatsState.initial()';
}


}




/// @nodoc


class StatsLoading implements StatsState {
  const StatsLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StatsLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'StatsState.loading()';
}


}




/// @nodoc


class StatsDashboardLoaded implements StatsState {
  const StatsDashboardLoaded(final  Map<String, dynamic> stats): _stats = stats;
  

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
$StatsDashboardLoadedCopyWith<StatsDashboardLoaded> get copyWith => _$StatsDashboardLoadedCopyWithImpl<StatsDashboardLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StatsDashboardLoaded&&const DeepCollectionEquality().equals(other._stats, _stats));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_stats));

@override
String toString() {
  return 'StatsState.dashboardLoaded(stats: $stats)';
}


}

/// @nodoc
abstract mixin class $StatsDashboardLoadedCopyWith<$Res> implements $StatsStateCopyWith<$Res> {
  factory $StatsDashboardLoadedCopyWith(StatsDashboardLoaded value, $Res Function(StatsDashboardLoaded) _then) = _$StatsDashboardLoadedCopyWithImpl;
@useResult
$Res call({
 Map<String, dynamic> stats
});




}
/// @nodoc
class _$StatsDashboardLoadedCopyWithImpl<$Res>
    implements $StatsDashboardLoadedCopyWith<$Res> {
  _$StatsDashboardLoadedCopyWithImpl(this._self, this._then);

  final StatsDashboardLoaded _self;
  final $Res Function(StatsDashboardLoaded) _then;

/// Create a copy of StatsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? stats = null,}) {
  return _then(StatsDashboardLoaded(
null == stats ? _self._stats : stats // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}

/// @nodoc


class StatsAnalyticsLoaded implements StatsState {
  const StatsAnalyticsLoaded(final  Map<String, dynamic> analytics): _analytics = analytics;
  

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
$StatsAnalyticsLoadedCopyWith<StatsAnalyticsLoaded> get copyWith => _$StatsAnalyticsLoadedCopyWithImpl<StatsAnalyticsLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StatsAnalyticsLoaded&&const DeepCollectionEquality().equals(other._analytics, _analytics));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_analytics));

@override
String toString() {
  return 'StatsState.analyticsLoaded(analytics: $analytics)';
}


}

/// @nodoc
abstract mixin class $StatsAnalyticsLoadedCopyWith<$Res> implements $StatsStateCopyWith<$Res> {
  factory $StatsAnalyticsLoadedCopyWith(StatsAnalyticsLoaded value, $Res Function(StatsAnalyticsLoaded) _then) = _$StatsAnalyticsLoadedCopyWithImpl;
@useResult
$Res call({
 Map<String, dynamic> analytics
});




}
/// @nodoc
class _$StatsAnalyticsLoadedCopyWithImpl<$Res>
    implements $StatsAnalyticsLoadedCopyWith<$Res> {
  _$StatsAnalyticsLoadedCopyWithImpl(this._self, this._then);

  final StatsAnalyticsLoaded _self;
  final $Res Function(StatsAnalyticsLoaded) _then;

/// Create a copy of StatsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? analytics = null,}) {
  return _then(StatsAnalyticsLoaded(
null == analytics ? _self._analytics : analytics // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}

/// @nodoc


class StatsFinancialLoaded implements StatsState {
  const StatsFinancialLoaded(final  Map<String, dynamic> report): _report = report;
  

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
$StatsFinancialLoadedCopyWith<StatsFinancialLoaded> get copyWith => _$StatsFinancialLoadedCopyWithImpl<StatsFinancialLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StatsFinancialLoaded&&const DeepCollectionEquality().equals(other._report, _report));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_report));

@override
String toString() {
  return 'StatsState.financialLoaded(report: $report)';
}


}

/// @nodoc
abstract mixin class $StatsFinancialLoadedCopyWith<$Res> implements $StatsStateCopyWith<$Res> {
  factory $StatsFinancialLoadedCopyWith(StatsFinancialLoaded value, $Res Function(StatsFinancialLoaded) _then) = _$StatsFinancialLoadedCopyWithImpl;
@useResult
$Res call({
 Map<String, dynamic> report
});




}
/// @nodoc
class _$StatsFinancialLoadedCopyWithImpl<$Res>
    implements $StatsFinancialLoadedCopyWith<$Res> {
  _$StatsFinancialLoadedCopyWithImpl(this._self, this._then);

  final StatsFinancialLoaded _self;
  final $Res Function(StatsFinancialLoaded) _then;

/// Create a copy of StatsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? report = null,}) {
  return _then(StatsFinancialLoaded(
null == report ? _self._report : report // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}

/// @nodoc


class StatsError implements StatsState {
  const StatsError(this.message);
  

 final  String message;

/// Create a copy of StatsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StatsErrorCopyWith<StatsError> get copyWith => _$StatsErrorCopyWithImpl<StatsError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StatsError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'StatsState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $StatsErrorCopyWith<$Res> implements $StatsStateCopyWith<$Res> {
  factory $StatsErrorCopyWith(StatsError value, $Res Function(StatsError) _then) = _$StatsErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$StatsErrorCopyWithImpl<$Res>
    implements $StatsErrorCopyWith<$Res> {
  _$StatsErrorCopyWithImpl(this._self, this._then);

  final StatsError _self;
  final $Res Function(StatsError) _then;

/// Create a copy of StatsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(StatsError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
