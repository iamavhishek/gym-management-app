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
import 'package:gym_core/config/environment.dart';
import 'package:gym_core/repositories/api_repository.dart';
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
  final AppEnvironment environment;

  const GymAppWrapper({
    super.key,
    required this.child,
    this.environment = AppEnvironment.dev,
  });

  @override
  Widget build(BuildContext context) {
    final apiRepository = ApiRepository(baseUrl: environment.baseUrl);

    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<AuthRepository>(
          create: (context) => AuthRepository(apiRepository),
        ),
        RepositoryProvider<PaymentRepository>(
          create: (context) => PaymentRepository(apiRepository),
        ),
        RepositoryProvider<ClassRepository>(
          create: (context) => ClassRepository(apiRepository),
        ),
        RepositoryProvider<TrainerRepository>(
          create: (context) => TrainerRepository(apiRepository),
        ),
        RepositoryProvider<MemberRepository>(
          create: (context) => MemberRepository(apiRepository),
        ),
        RepositoryProvider<AttendanceRepository>(
          create: (context) => AttendanceRepository(apiRepository),
        ),
        RepositoryProvider<NotificationRepository>(
          create: (context) => NotificationRepository(apiRepository),
        ),
        RepositoryProvider<WorkoutRepository>(
          create: (context) => WorkoutRepository(apiRepository),
        ),
        RepositoryProvider<ReportRepository>(
          create: (context) => ReportRepository(apiRepository),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider<AuthBloc>(
            create: (context) => AuthBloc(context.read<AuthRepository>())
              ..add(const AuthEvent.started()),
          ),
          BlocProvider<PlansBloc>(
            create: (context) => PlansBloc(context.read<PaymentRepository>()),
          ),
          BlocProvider<ClassBloc>(
            create: (context) => ClassBloc(context.read<ClassRepository>()),
          ),
          BlocProvider<MemberBloc>(
            create: (context) => MemberBloc(context.read<MemberRepository>()),
          ),
          BlocProvider<AttendanceBloc>(
            create: (context) =>
                AttendanceBloc(context.read<AttendanceRepository>()),
          ),
          BlocProvider<PaymentBloc>(
            create: (context) => PaymentBloc(context.read<PaymentRepository>()),
          ),
          BlocProvider<WorkoutBloc>(
            create: (context) => WorkoutBloc(context.read<WorkoutRepository>()),
          ),
          BlocProvider<NotificationBloc>(
            create: (context) =>
                NotificationBloc(context.read<NotificationRepository>()),
          ),
          BlocProvider<TrainerBloc>(
            create: (context) => TrainerBloc(context.read<TrainerRepository>()),
          ),
          BlocProvider<StatsBloc>(
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
