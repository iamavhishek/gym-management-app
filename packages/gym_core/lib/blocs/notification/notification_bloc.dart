import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gym_core/blocs/notification/notification_event.dart';
import 'package:gym_core/blocs/notification/notification_state.dart';
import 'package:gym_core/repositories/notification_repository.dart';

class NotificationBloc extends Bloc<NotificationEvent, NotificationState> {
  final NotificationRepository _notificationRepository;

  NotificationBloc(this._notificationRepository)
    : super(const NotificationState.initial()) {
    on<NotificationEvent>((event, emit) async {
      await event.when(
        fetchNotifications: () async {
          emit(const NotificationState.loading());
          try {
            final notifications = await _notificationRepository
                .getNotifications();
            emit(NotificationState.loaded(notifications));
          } catch (e) {
            emit(NotificationState.error(e.toString()));
          }
        },
        markAsRead: (id) async {
          try {
            await _notificationRepository.markAsRead(id);
            add(const NotificationEvent.fetchNotifications());
          } catch (e) {
            emit(NotificationState.error(e.toString()));
          }
        },
        markAllAsRead: () async {
          emit(const NotificationState.loading());
          try {
            await _notificationRepository.markAllAsRead();
            add(const NotificationEvent.fetchNotifications());
          } catch (e) {
            emit(NotificationState.error(e.toString()));
          }
        },
      );
    });
  }
}
