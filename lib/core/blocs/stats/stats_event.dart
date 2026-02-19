import 'package:freezed_annotation/freezed_annotation.dart';

part 'stats_event.freezed.dart';

@freezed
class StatsEvent with _$StatsEvent {
  const factory StatsEvent.fetchDashboard() = _FetchDashboard;
  const factory StatsEvent.fetchAnalytics(String type) = _FetchAnalytics;
  const factory StatsEvent.fetchFinancialReport(String period) =
      _FetchFinancialReport;
}
