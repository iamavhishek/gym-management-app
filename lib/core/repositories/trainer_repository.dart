import 'package:gym_management_app/core/models/trainer_model.dart';
import 'package:gym_management_app/core/repositories/api_repository.dart';

class TrainerRepository {
  final ApiRepository _apiRepository;

  TrainerRepository(this._apiRepository);

  Future<List<TrainerModel>> getTrainers({int page = 1, int limit = 20}) async {
    final response = await _apiRepository.get(
      '/trainers?page=$page&limit=$limit',
    );
    final List<dynamic> data = response['data']['trainers'] as List? ?? [];
    return data
        .map((e) => TrainerModel.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  Future<TrainerModel> getTrainerById(String trainerId) async {
    final response = await _apiRepository.get('/trainers/$trainerId');
    return TrainerModel.fromJson(
      response['data']['trainer'] as Map<String, dynamic>,
    );
  }

  Future<void> updateTrainer(
    String trainerId,
    Map<String, dynamic> updates,
  ) async {
    await _apiRepository.put('/trainers/$trainerId', body: updates);
  }

  Future<void> createTrainer(Map<String, dynamic> trainerData) async {
    await _apiRepository.post('/trainers', body: trainerData);
  }

  Future<Map<String, dynamic>> getDashboardData() async {
    final response = await _apiRepository.get('/trainers/dashboard');
    return response['data'] as Map<String, dynamic>;
  }

  Future<List<Map<String, dynamic>>> getClients() async {
    final response = await _apiRepository.get('/trainers/clients');
    return List<Map<String, dynamic>>.from(response['data'] as List? ?? []);
  }

  Future<Map<String, dynamic>> getPerformance() async {
    final response = await _apiRepository.get('/trainers/performance');
    return response['data'] as Map<String, dynamic>;
  }
}
