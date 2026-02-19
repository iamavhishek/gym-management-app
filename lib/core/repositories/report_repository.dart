import 'package:gym_management_app/core/repositories/api_repository.dart';

class ReportRepository {
  final ApiRepository _apiRepository;

  ReportRepository(this._apiRepository);

  Future<Map<String, dynamic>> getDashboardStats() async {
    final response = await _apiRepository.get('/reports/dashboard');
    return response['data'] as Map<String, dynamic>;
  }

  Future<Map<String, dynamic>> getAnalytics(String type) async {
    final response = await _apiRepository.get('/reports/analytics?type=$type');
    return response['data'] as Map<String, dynamic>;
  }

  Future<Map<String, dynamic>> getFinancialReport(String period) async {
    final response = await _apiRepository.get(
      '/reports/financial?groupBy=$period',
    );
    return response['data'] as Map<String, dynamic>;
  }
}
