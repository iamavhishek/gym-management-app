import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_event.freezed.dart';

@freezed
class NotificationEvent with _$NotificationEvent {
  const factory NotificationEvent.fetchNotifications() = _FetchNotifications;
  const factory NotificationEvent.markAsRead(String id) = _MarkAsRead;
  const factory NotificationEvent.markAllAsRead() = _MarkAllAsRead;
}
