import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gym_core/blocs/attendance/attendance_bloc.dart';
import 'package:gym_core/blocs/auth/auth_bloc.dart';
import 'package:gym_core/blocs/auth/auth_event.dart';
import 'package:gym_core/blocs/class/class_bloc.dart';
import 'package:gym_core/blocs/member/member_bloc.dart';
import 'package:gym_core/blocs/notification/notification_bloc.dart';
import 'package:gym_core/blocs/payment/payment_bloc.dart';
import 'package:gym_core/blocs/plans/plans_bloc.dart';
import 'package:gym_core/blocs/stats/stats_bloc.dart';
import 'package:gym_core/blocs/trainer/trainer_bloc.dart';
import 'package:gym_core/blocs/workout/workout_bloc.dart';
import 'package:gym_core/repositories/attendance_repository.dart';
import 'package:gym_core/repositories/auth_repository.dart';
import 'package:gym_core/repositories/class_repository.dart';
import 'package:gym_core/repositories/member_repository.dart';
import 'package:gym_core/repositories/notification_repository.dart';
import 'package:gym_core/repositories/payment_repository.dart';
import 'package:gym_core/repositories/report_repository.dart';
import 'package:gym_core/repositories/trainer_repository.dart';
import 'package:gym_core/repositories/workout_repository.dart';

class GymAppWrapper extends StatelessWidget {
  final Widget child;

  const GymAppWrapper({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(create: (context) => AuthRepository()),
        RepositoryProvider(create: (context) => PaymentRepository()),
        RepositoryProvider(create: (context) => ClassRepository()),
        RepositoryProvider(create: (context) => TrainerRepository()),
        RepositoryProvider(create: (context) => MemberRepository()),
        RepositoryProvider(create: (context) => AttendanceRepository()),
        RepositoryProvider(create: (context) => NotificationRepository()),
        RepositoryProvider(create: (context) => WorkoutRepository()),
        RepositoryProvider(create: (context) => ReportRepository()),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => AuthBloc(context.read<AuthRepository>())
              ..add(const AuthEvent.started()),
          ),
          BlocProvider(
            create: (context) => PlansBloc(context.read<PaymentRepository>()),
          ),
          BlocProvider(
            create: (context) => ClassBloc(context.read<ClassRepository>()),
          ),
          BlocProvider(
            create: (context) => MemberBloc(context.read<MemberRepository>()),
          ),
          BlocProvider(
            create: (context) =>
                AttendanceBloc(context.read<AttendanceRepository>()),
          ),
          BlocProvider(
            create: (context) => PaymentBloc(context.read<PaymentRepository>()),
          ),
          BlocProvider(
            create: (context) => WorkoutBloc(context.read<WorkoutRepository>()),
          ),
          BlocProvider(
            create: (context) =>
                NotificationBloc(context.read<NotificationRepository>()),
          ),
          BlocProvider(
            create: (context) => TrainerBloc(context.read<TrainerRepository>()),
          ),
          BlocProvider(
            create: (context) => StatsBloc(
              context.read<ReportRepository>(),
              context.read<PaymentRepository>(),
            ),
          ),
        ],
        child: child,
      ),
    );
  }
}
