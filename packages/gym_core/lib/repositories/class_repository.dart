import 'package:gym_core/models/class_model.dart';
import 'package:gym_core/repositories/api_repository.dart';

class ClassRepository {
  final ApiRepository _apiRepository;

  ClassRepository(this._apiRepository);

  Future<List<ClassModel>> getClasses() async {
    final response = await _apiRepository.get('/classes');
    final List<dynamic> data = response['data']['classes'] as List? ?? [];
    return data
        .map((e) => ClassModel.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  Future<void> bookClass(String classId, String memberId) async {
    await _apiRepository.post(
      '/classes/book',
      body: {'classId': classId, 'memberId': memberId},
    );
  }

  Future<void> createClass({
    required String name,
    required String description,
    required String trainerId,
    required int maxCapacity,
    required DateTime startTime,
    required DateTime endTime,
    required String type,
  }) async {
    await _apiRepository.post(
      '/classes',
      body: {
        'name': name,
        'description': description,
        'trainerId': trainerId,
        'maxCapacity': maxCapacity,
        'startTime': startTime.toIso8601String(),
        'endTime': endTime.toIso8601String(),
        'type': type,
      },
    );
  }

  Future<void> updateClass({
    required String id,
    String? name,
    String? description,
    int? maxCapacity,
    DateTime? startTime,
    DateTime? endTime,
    String? status,
    String? type,
  }) async {
    await _apiRepository.put(
      '/classes/$id',
      body: {
        'name': ?name,
        'description': ?description,
        'maxCapacity': ?maxCapacity,
        if (startTime != null) 'startTime': startTime.toIso8601String(),
        if (endTime != null) 'endTime': endTime.toIso8601String(),
        'status': ?status,
        'type': ?type,
      },
    );
  }

  Future<void> deleteClass(String id) async {
    await _apiRepository.delete('/classes/$id');
  }
}
