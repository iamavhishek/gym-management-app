import 'package:freezed_annotation/freezed_annotation.dart';

part 'stats_state.freezed.dart';

@freezed
class StatsState with _$StatsState {
  const factory StatsState.initial() = _Initial;
  const factory StatsState.loading() = _Loading;
  const factory StatsState.dashboardLoaded(Map<String, dynamic> stats) =
      _DashboardLoaded;
  const factory StatsState.analyticsLoaded(Map<String, dynamic> analytics) =
      _AnalyticsLoaded;
  const factory StatsState.financialLoaded(Map<String, dynamic> report) =
      _FinancialLoaded;
  const factory StatsState.error(String message) = _Error;
}
