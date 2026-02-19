import 'package:gym_management_app/core/models/notification_model.dart';
import 'package:gym_management_app/core/repositories/api_repository.dart';

class NotificationRepository {
  final ApiRepository _apiRepository;

  NotificationRepository(this._apiRepository);

  Future<List<NotificationModel>> getNotifications() async {
    final response = await _apiRepository.get('/notifications');
    final List<dynamic> data = response['data']['notifications'] as List? ?? [];
    return data
        .map((e) => NotificationModel.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  Future<void> markAsRead(String notificationId) async {
    await _apiRepository.put('/notifications/$notificationId/read');
  }

  Future<void> markAllAsRead() async {
    await _apiRepository.put('/notifications/read-all');
  }
}
