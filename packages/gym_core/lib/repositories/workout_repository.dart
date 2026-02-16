import 'package:gym_core/models/workout_model.dart';
import 'package:gym_core/repositories/api_repository.dart';

class WorkoutRepository {
  final ApiRepository _apiRepository;

  WorkoutRepository(this._apiRepository);

  Future<List<WorkoutPlanModel>> getWorkoutPlans({
    String? memberId,
    String? trainerId,
    String? userId,
    bool isTemplate = false,
  }) async {
    final Map<String, String> params = {};
    if (memberId != null) params['memberId'] = memberId;
    if (trainerId != null) params['trainerId'] = trainerId;
    if (userId != null) params['userId'] = userId;
    if (isTemplate) params['isTemplate'] = 'true';

    final response = await _apiRepository.get(
      '/workouts/plans',
      params: params,
    );
    final List<dynamic> data = response['data']['plans'] as List? ?? [];
    return data
        .map((e) => WorkoutPlanModel.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  Future<void> logWorkout(WorkoutLogModel log) async {
    await _apiRepository.post('/workouts/logs', body: log.toJson());
  }

  Future<void> createWorkoutPlan(WorkoutPlanModel plan) async {
    // Note: This endpoint might vary based on backend implementation
    // Assuming backend takes the full plan structure
    await _apiRepository.post('/workouts/plans', body: plan.toJson());
  }

  Future<List<WorkoutExerciseModel>> getExercises() async {
    final response = await _apiRepository.get('/workouts/exercises');
    final List<dynamic> data = response['data']['exercises'] as List? ?? [];
    return data
        .map((e) => WorkoutExerciseModel.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  Future<void> updateWorkoutPlan(WorkoutPlanModel plan) async {
    await _apiRepository.put('/workouts/plans/${plan.id}', body: plan.toJson());
  }

  Future<void> deleteWorkoutPlan(String planId) async {
    await _apiRepository.delete('/workouts/plans/$planId');
  }
}
