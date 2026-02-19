import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gym_management_app/core/models/notification_model.dart';

part 'notification_state.freezed.dart';

@freezed
class NotificationState with _$NotificationState {
  const factory NotificationState.initial() = NotificationInitial;
  const factory NotificationState.loading() = NotificationLoading;
  const factory NotificationState.loaded(
    List<NotificationModel> notifications,
  ) = NotificationLoaded;
  const factory NotificationState.success(String message) = NotificationSuccess;
  const factory NotificationState.error(String message) = NotificationError;
}
