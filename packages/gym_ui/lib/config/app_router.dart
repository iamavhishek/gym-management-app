import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gym_core/blocs/auth/auth_bloc.dart';
import 'package:gym_core/blocs/auth/auth_event.dart';
import 'package:gym_core/blocs/auth/auth_state.dart';
import 'package:gym_core/config/flavor.dart';
import 'package:gym_core/config/routes.dart';
import 'package:gym_core/models/workout_model.dart';
import 'package:gym_ui/screens/admin/add_member_screen.dart';
import 'package:gym_ui/screens/admin/add_trainer_screen.dart';
import 'package:gym_ui/screens/admin/dashboard_screen.dart';
import 'package:gym_ui/screens/admin/member_detail_screen.dart';
import 'package:gym_ui/screens/admin/payments_screen.dart';
import 'package:gym_ui/screens/admin/plans_screen.dart';
import 'package:gym_ui/screens/admin/reports_screen.dart';
import 'package:gym_ui/screens/admin/trainer_detail_screen.dart';
import 'package:gym_ui/screens/admin/trainers_screen.dart';
// Screens
import 'package:gym_ui/screens/auth/login_screen.dart';
import 'package:gym_ui/screens/auth/register_screen.dart';
import 'package:gym_ui/screens/common/classes_screen.dart';
import 'package:gym_ui/screens/common/members_screen.dart';
import 'package:gym_ui/screens/common/notifications_screen.dart';
import 'package:gym_ui/screens/common/qr_scanner_screen.dart';
import 'package:gym_ui/screens/common/splash_screen.dart';
import 'package:gym_ui/screens/common/workout_plan_screen.dart';
import 'package:gym_ui/screens/member/attendance_screen.dart';
import 'package:gym_ui/screens/member/member_dashboard.dart';
import 'package:gym_ui/screens/member/profile_screen.dart';
import 'package:gym_ui/screens/trainer/create_workout_screen.dart';
import 'package:gym_ui/screens/trainer/trainer_dashboard.dart';

class AppRouter {
  static GoRouter createRouter(
    AuthBloc authBloc, {
    AppFlavor flavor = AppFlavor.member,
    String initialLocation = AppRoutes.splash,
  }) {
    return GoRouter(
      initialLocation: initialLocation,
      refreshListenable: _AuthRefreshListenable(authBloc),
      redirect: (context, state) {
        final authState = authBloc.state;
        final bool isAuthRoute = state.matchedLocation == AppRoutes.login ||
            state.matchedLocation == AppRoutes.register ||
            state.matchedLocation == AppRoutes.splash;

        return authState.maybeWhen(
          authenticated: (user) {
            // 1. Flavor Enforcement: Block users who don't belong in this specific app build
            if (flavor != AppFlavor.all) {
              final bool isAllowed =
                  (flavor == AppFlavor.admin && user.role == 'admin') ||
                      (flavor == AppFlavor.trainer && user.role == 'trainer') ||
                      (flavor == AppFlavor.member && user.role == 'member');

              if (!isAllowed) {
                authBloc.add(const AuthEvent.logout());
                return AppRoutes.login;
              }
            }

            // 2. Already Authenticated: Redirect to dashboard if on login/splash
            if (isAuthRoute) {
              if (user.role == 'admin') return AppRoutes.adminDashboard;
              if (user.role == 'trainer') return AppRoutes.trainerDashboard;
              return AppRoutes.memberDashboard;
            }

            // 3. Route Access Logic (RBAC)
            final path = state.matchedLocation;

            // Admin only routes
            if (path.startsWith('/admin') && user.role != 'admin') {
              return user.role == 'trainer'
                  ? AppRoutes.trainerDashboard
                  : AppRoutes.memberDashboard;
            }

            // Trainer only routes
            if (path.startsWith('/trainer') &&
                user.role != 'trainer' &&
                user.role != 'admin') {
              return user.role == 'admin'
                  ? AppRoutes.adminDashboard
                  : AppRoutes.memberDashboard;
            }

            // Member only routes
            if (path.startsWith('/member') &&
                user.role != 'member' &&
                user.role != 'admin') {
              return user.role == 'admin'
                  ? AppRoutes.adminDashboard
                  : AppRoutes.trainerDashboard;
            }

            return null; // Allow access
          },
          unauthenticated: (_) => isAuthRoute ? null : AppRoutes.login,
          orElse: () => null,
        );
      },
      routes: [
        // ... (routes remain the same)
        // Auth & Splash
        GoRoute(
          path: AppRoutes.splash,
          builder: (context, state) => const SplashScreen(),
        ),
        GoRoute(
          path: AppRoutes.login,
          builder: (context, state) => const LoginScreen(),
        ),
        GoRoute(
          path: AppRoutes.register,
          builder: (context, state) => const RegisterScreen(),
        ),

        // Admin
        GoRoute(
          path: AppRoutes.adminDashboard,
          builder: (context, state) => const AdminDashboard(),
        ),
        GoRoute(
          path: AppRoutes.adminMembers,
          builder: (context, state) => const MembersScreen(),
          routes: [
            GoRoute(
              path: 'add',
              builder: (context, state) => const AddMemberScreen(),
            ),
            GoRoute(
              path: ':id',
              builder: (context, state) => MemberDetailScreen(
                memberId: state.pathParameters['id']!,
              ),
              routes: [
                GoRoute(
                  path: 'edit',
                  builder: (context, state) => AddMemberScreen(
                    memberId: state.pathParameters['id'],
                  ),
                ),
                GoRoute(
                  path: 'workouts',
                  builder: (context, state) => WorkoutPlanScreen(
                    memberId: state.pathParameters['id'],
                  ),
                ),
              ],
            ),
          ],
        ),
        GoRoute(
          path: AppRoutes.adminTrainers,
          builder: (context, state) => const TrainersScreen(),
          routes: [
            GoRoute(
              path: 'add',
              builder: (context, state) => const AddTrainerScreen(),
            ),
            GoRoute(
              path: ':id',
              builder: (context, state) => TrainerDetailScreen(
                trainerId: state.pathParameters['id']!,
              ),
              routes: [
                GoRoute(
                  path: 'edit',
                  builder: (context, state) => AddTrainerScreen(
                    trainerId: state.pathParameters['id'],
                  ),
                ),
              ],
            ),
          ],
        ),
        GoRoute(
          path: AppRoutes.adminPayments,
          builder: (context, state) => const PaymentsScreen(),
        ),
        GoRoute(
          path: AppRoutes.adminReports,
          builder: (context, state) => const ReportsScreen(),
        ),
        GoRoute(
          path: AppRoutes.adminClasses,
          builder: (context, state) => const ClassesScreen(),
        ),
        GoRoute(
          path: AppRoutes.adminPlans,
          builder: (context, state) => const PlansScreen(),
        ),

        // Member
        GoRoute(
          path: AppRoutes.memberDashboard,
          builder: (context, state) => const MemberDashboard(),
        ),
        GoRoute(
          path: AppRoutes.memberWorkouts,
          builder: (context, state) => const WorkoutPlanScreen(),
        ),
        GoRoute(
          path: AppRoutes.memberClasses,
          builder: (context, state) => const ClassesScreen(),
        ),
        GoRoute(
          path: AppRoutes.memberAttendance,
          builder: (context, state) => const AttendanceScreen(),
        ),
        GoRoute(
          path: AppRoutes.memberProfile,
          builder: (context, state) => const ProfileScreen(),
        ),

        // Trainer
        GoRoute(
          path: AppRoutes.trainerDashboard,
          builder: (context, state) => const TrainerDashboard(),
        ),
        GoRoute(
          path: AppRoutes.trainerClients,
          builder: (context, state) => const MembersScreen(),
        ),
        GoRoute(
          path: AppRoutes.trainerWorkouts,
          builder: (context, state) =>
              const WorkoutPlanScreen(isTemplateMode: true),
        ),
        GoRoute(
          path: AppRoutes.trainerWorkoutsAdd,
          builder: (context, state) {
            final args = state.extra as Map<String, dynamic>?;
            return CreateWorkoutScreen(
              isTemplate: (args?['isTemplate'] as bool?) ?? false,
              plan: args?['plan'] as WorkoutPlanModel?,
            );
          },
          routes: [
            GoRoute(
              path: ':memberId',
              builder: (context, state) => CreateWorkoutScreen(
                memberId: state.pathParameters['memberId']!,
              ),
            ),
          ],
        ),
        GoRoute(
          path: AppRoutes.trainerSchedule,
          builder: (context, state) => const ClassesScreen(),
        ),

        // Common
        GoRoute(
          path: AppRoutes.qrScanner,
          builder: (context, state) => const QrScannerScreen(),
        ),
        GoRoute(
          path: AppRoutes.notifications,
          builder: (context, state) => const NotificationsScreen(),
        ),
// ... (previous routes)
      ],
    );
  }
}

class _AuthRefreshListenable extends ChangeNotifier {
  _AuthRefreshListenable(AuthBloc authBloc) {
    _subscription = authBloc.stream.listen((state) {
      notifyListeners();
    });
  }

  late final StreamSubscription<AuthState> _subscription;

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
}
