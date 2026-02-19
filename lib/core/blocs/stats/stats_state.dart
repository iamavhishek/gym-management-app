import 'package:freezed_annotation/freezed_annotation.dart';

part 'stats_state.freezed.dart';

@freezed
class StatsState with _$StatsState {
  const factory StatsState.initial() = StatsInitial;
  const factory StatsState.loading() = StatsLoading;
  const factory StatsState.dashboardLoaded(Map<String, dynamic> stats) =
      StatsDashboardLoaded;
  const factory StatsState.analyticsLoaded(Map<String, dynamic> analytics) =
      StatsAnalyticsLoaded;
  const factory StatsState.financialLoaded(Map<String, dynamic> report) =
      StatsFinancialLoaded;
  const factory StatsState.error(String message) = StatsError;
}
