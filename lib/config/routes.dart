import 'package:flutter/material.dart';
import 'package:gym_management_app/models/workout_model.dart';
import 'package:gym_management_app/screens/admin/add_member_screen.dart';
import 'package:gym_management_app/screens/admin/add_trainer_screen.dart';
import 'package:gym_management_app/screens/admin/dashboard_screen.dart';
import 'package:gym_management_app/screens/admin/member_detail_screen.dart';
import 'package:gym_management_app/screens/admin/members_screen.dart';
import 'package:gym_management_app/screens/admin/payments_screen.dart';
import 'package:gym_management_app/screens/admin/plans_screen.dart';
import 'package:gym_management_app/screens/admin/reports_screen.dart';
import 'package:gym_management_app/screens/admin/trainer_detail_screen.dart';
import 'package:gym_management_app/screens/admin/trainers_screen.dart';
import 'package:gym_management_app/screens/auth/login_screen.dart';
import 'package:gym_management_app/screens/auth/register_screen.dart';
import 'package:gym_management_app/screens/common/classes_screen.dart';
import 'package:gym_management_app/screens/common/notifications_screen.dart';
import 'package:gym_management_app/screens/common/qr_scanner_screen.dart';
import 'package:gym_management_app/screens/common/splash_screen.dart';
import 'package:gym_management_app/screens/member/attendance_screen.dart';
import 'package:gym_management_app/screens/member/member_dashboard.dart';
import 'package:gym_management_app/screens/member/profile_screen.dart';
import 'package:gym_management_app/screens/member/workout_plan_screen.dart';
import 'package:gym_management_app/screens/trainer/create_workout_screen.dart';
import 'package:gym_management_app/screens/trainer/trainer_dashboard.dart';

class AppRoutes {
  static const String splash = '/';
  static const String login = '/login';
  static const String register = '/register';

  // Admin routes
  static const String adminDashboard = '/admin/dashboard';
  static const String adminMembers = '/admin/members';
  static const String adminMembersAdd = '/admin/members/add';
  static const String adminTrainers = '/admin/trainers';
  static const String adminTrainersAdd = '/admin/trainers/add';
  static const String adminPayments = '/admin/payments';
  static const String adminReports = '/admin/reports';
  static const String adminClasses = '/admin/classes';
  static const String adminPlans = '/admin/plans';

  // Member routes
  static const String memberDashboard = '/member/dashboard';
  static const String memberWorkouts = '/member/workouts';
  static const String memberClasses = '/member/classes';
  static const String memberAttendance = '/member/attendance';
  static const String memberProfile = '/member/profile';

  // Trainer routes
  static const String trainerDashboard = '/trainer/dashboard';
  static const String trainerClients = '/trainer/clients';
  static const String trainerWorkouts = '/trainer/workouts';
  static const String trainerWorkoutsAdd = '/trainer/workouts/add';
  static const String trainerSchedule = '/trainer/schedule';

  // Common routes
  static const String qrScanner = '/qr-scanner';
  static const String notifications = '/notifications';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splash:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case login:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case register:
        return MaterialPageRoute(builder: (_) => const RegisterScreen());

      // Admin
      case adminDashboard:
        return MaterialPageRoute(builder: (_) => const AdminDashboard());
      case adminMembers:
        return MaterialPageRoute(builder: (_) => const MembersScreen());
      case adminMembersAdd:
        return MaterialPageRoute(builder: (_) => const AddMemberScreen());
      case adminTrainers:
        return MaterialPageRoute(builder: (_) => const TrainersScreen());
      case adminTrainersAdd:
        return MaterialPageRoute(builder: (_) => const AddTrainerScreen());
      case adminPayments:
        return MaterialPageRoute(builder: (_) => const PaymentsScreen());
      case adminReports:
        return MaterialPageRoute(builder: (_) => const ReportsScreen());
      case adminClasses:
        return MaterialPageRoute(builder: (_) => const ClassesScreen());
      case adminPlans:
        return MaterialPageRoute(builder: (_) => const PlansScreen());

      // Member
      case memberDashboard:
        return MaterialPageRoute(builder: (_) => const MemberDashboard());
      case memberWorkouts:
        return MaterialPageRoute(builder: (_) => const WorkoutPlanScreen());
      case memberClasses:
        return MaterialPageRoute(builder: (_) => const ClassesScreen());
      case memberAttendance:
        return MaterialPageRoute(builder: (_) => const AttendanceScreen());
      case memberProfile:
        return MaterialPageRoute(builder: (_) => const ProfileScreen());

      // Trainer
      case trainerDashboard:
        return MaterialPageRoute(builder: (_) => const TrainerDashboard());
      case trainerClients:
        return MaterialPageRoute(builder: (_) => const MembersScreen());
      case trainerWorkouts:
        return MaterialPageRoute(
          builder: (_) => const WorkoutPlanScreen(isTemplateMode: true),
        );
      case trainerWorkoutsAdd:
        final args = settings.arguments as Map<String, dynamic>?;
        return MaterialPageRoute(
          builder: (_) => CreateWorkoutScreen(
            isTemplate: (args?['isTemplate'] as bool?) ?? false,
            plan: args?['plan'] as WorkoutPlanModel?,
          ),
        );
      case trainerSchedule:
        return MaterialPageRoute(builder: (_) => const ClassesScreen());

      // Common
      case qrScanner:
        return MaterialPageRoute(builder: (_) => const QrScannerScreen());
      case notifications:
        return MaterialPageRoute(builder: (_) => const NotificationsScreen());

      default:
        // Handle dynamic routes
        final name = settings.name;
        if (name != null) {
          // Members
          // /admin/members/:id
          final memberDetailRegex = RegExp(r'^/admin/members/([^/]+)$');
          final memberEditRegex = RegExp(r'^/admin/members/([^/]+)/edit$');
          final trainerWorkoutsAddRegex = RegExp(
            r'^/trainer/workouts/add/([^/]+)$',
          );

          if (memberDetailRegex.hasMatch(name)) {
            final match = memberDetailRegex.firstMatch(name)!;
            final id = match.group(1)!;
            return MaterialPageRoute(
              builder: (_) => MemberDetailScreen(memberId: id),
            );
          }

          if (memberEditRegex.hasMatch(name)) {
            final match = memberEditRegex.firstMatch(name)!;
            final id = match.group(1)!;
            return MaterialPageRoute(
              builder: (_) => AddMemberScreen(memberId: id),
            );
          }

          if (trainerWorkoutsAddRegex.hasMatch(name)) {
            final match = trainerWorkoutsAddRegex.firstMatch(name)!;
            final id = match.group(1)!;
            return MaterialPageRoute(
              builder: (_) => CreateWorkoutScreen(memberId: id),
            );
          }

          // Trainers
          // /admin/trainers/:id
          final trainerDetailRegex = RegExp(r'^/admin/trainers/([^/]+)$');
          final trainerEditRegex = RegExp(r'^/admin/trainers/([^/]+)/edit$');

          if (trainerDetailRegex.hasMatch(name)) {
            final match = trainerDetailRegex.firstMatch(name)!;
            final id = match.group(1)!;
            return MaterialPageRoute(
              builder: (_) => TrainerDetailScreen(trainerId: id),
            );
          }

          if (trainerEditRegex.hasMatch(name)) {
            final match = trainerEditRegex.firstMatch(name)!;
            final id = match.group(1)!;
            return MaterialPageRoute(
              builder: (_) => AddTrainerScreen(trainerId: id),
            );
          }
        }

        return MaterialPageRoute(
          builder: (_) => Scaffold(
            appBar: AppBar(title: const Text('Not Found')),
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
