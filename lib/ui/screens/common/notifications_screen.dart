import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gym_management_app/core/blocs/notification/notification_bloc.dart';
import 'package:gym_management_app/core/blocs/notification/notification_event.dart';
import 'package:gym_management_app/core/blocs/notification/notification_state.dart';
import 'package:gym_management_app/core/models/notification_model.dart';
import 'package:gym_management_app/ui/config/theme.dart';
import 'package:intl/intl.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({super.key});

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  @override
  void initState() {
    super.initState();
    context.read<NotificationBloc>().add(
      const NotificationEvent.fetchNotifications(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications'),
        actions: [
          IconButton(
            icon: const Icon(Icons.done_all),
            onPressed: () {
              context.read<NotificationBloc>().add(
                const NotificationEvent.markAllAsRead(),
              );
            },
            tooltip: 'Mark all as read',
          ),
        ],
      ),
      body: BlocBuilder<NotificationBloc, NotificationState>(
        builder: (context, state) {
          if (state is NotificationLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is NotificationLoaded) {
            return _buildNotificationsList(state.notifications);
          } else if (state is NotificationError) {
            return Center(child: Text('Error: ${state.message}'));
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }

  Widget _buildNotificationsList(List<NotificationModel> notifications) {
    if (notifications.isEmpty) {
      return const Center(child: Text('No notifications'));
    }

    return RefreshIndicator(
      onRefresh: () async {
        context.read<NotificationBloc>().add(
          const NotificationEvent.fetchNotifications(),
        );
      },
      child: ListView.builder(
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          final notification = notifications[index];
          return _buildNotificationItem(notification);
        },
      ),
    );
  }

  Widget _buildNotificationItem(NotificationModel notification) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: _getNotificationColor(
          notification.type,
        ).withValues(alpha: 0.1),
        child: Icon(
          _getNotificationIcon(notification.type),
          color: _getNotificationColor(notification.type),
        ),
      ),
      title: Text(
        notification.title,
        style: TextStyle(
          fontWeight: notification.isRead ? FontWeight.normal : FontWeight.bold,
        ),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(notification.message),
          Text(
            DateFormat('MMM dd, hh:mm a').format(notification.createdAt),
            style: GoogleFonts.inter(
              fontSize: 12,
              color: AppTheme.textSecondary,
            ),
          ),
        ],
      ),
      onTap: () {
        if (!notification.isRead) {
          context.read<NotificationBloc>().add(
            NotificationEvent.markAsRead(notification.id),
          );
        }
      },
      tileColor: notification.isRead
          ? null
          : AppTheme.primaryBlue.withOpacity(0.04),
    );
  }

  IconData _getNotificationIcon(String type) {
    switch (type.toLowerCase()) {
      case 'payment':
        return Icons.payment;

      case 'attendance':
        return Icons.check_circle;
      default:
        return Icons.notifications;
    }
  }

  Color _getNotificationColor(String type) {
    switch (type.toLowerCase()) {
      case 'payment':
        return const Color(0xFF10B981);

      case 'attendance':
        return const Color(0xFFF59E0B);
      default:
        return AppTheme.textSecondary;
    }
  }
}
