import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gym_management_app/blocs/stats/stats_event.dart';
import 'package:gym_management_app/blocs/stats/stats_state.dart';
import 'package:gym_management_app/repositories/payment_repository.dart';
import 'package:gym_management_app/repositories/report_repository.dart';

class StatsBloc extends Bloc<StatsEvent, StatsState> {
  final ReportRepository _reportRepository;
  final PaymentRepository _paymentRepository;

  StatsBloc(this._reportRepository, this._paymentRepository)
    : super(const StatsState.initial()) {
    on<StatsEvent>((event, emit) async {
      await event.when(
        fetchDashboard: () async {
          emit(const StatsState.loading());
          try {
            final stats = await _reportRepository.getDashboardStats();
            final plans = await _paymentRepository.getMembershipPlans();
            stats['hasPlans'] = plans.isNotEmpty;
            emit(StatsState.dashboardLoaded(stats));
          } catch (e) {
            emit(StatsState.error(e.toString()));
          }
        },
        fetchAnalytics: (type) async {
          emit(const StatsState.loading());
          try {
            final analytics = await _reportRepository.getAnalytics(type);
            emit(StatsState.analyticsLoaded(analytics));
          } catch (e) {
            emit(StatsState.error(e.toString()));
          }
        },
        fetchFinancialReport: (period) async {
          emit(const StatsState.loading());
          try {
            final report = await _reportRepository.getFinancialReport(period);
            emit(StatsState.financialLoaded(report));
          } catch (e) {
            emit(StatsState.error(e.toString()));
          }
        },
      );
    });
  }
}
