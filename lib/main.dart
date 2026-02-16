import 'dart:async';
import 'dart:developer' as developer;

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gym_management_app/blocs/attendance/attendance_bloc.dart';
import 'package:gym_management_app/blocs/auth/auth_bloc.dart';
import 'package:gym_management_app/blocs/auth/auth_event.dart';
import 'package:gym_management_app/blocs/class/class_bloc.dart';
import 'package:gym_management_app/blocs/member/member_bloc.dart';
import 'package:gym_management_app/blocs/notification/notification_bloc.dart';
import 'package:gym_management_app/blocs/payment/payment_bloc.dart';
import 'package:gym_management_app/blocs/plans/plans_bloc.dart';
import 'package:gym_management_app/blocs/stats/stats_bloc.dart';
import 'package:gym_management_app/blocs/trainer/trainer_bloc.dart';
import 'package:gym_management_app/blocs/workout/workout_bloc.dart';
import 'package:gym_management_app/config/routes.dart';
import 'package:gym_management_app/config/theme.dart';
import 'package:gym_management_app/repositories/attendance_repository.dart';
import 'package:gym_management_app/repositories/auth_repository.dart';
import 'package:gym_management_app/repositories/class_repository.dart';
import 'package:gym_management_app/repositories/member_repository.dart';
import 'package:gym_management_app/repositories/notification_repository.dart';
import 'package:gym_management_app/repositories/payment_repository.dart';
import 'package:gym_management_app/repositories/report_repository.dart';
import 'package:gym_management_app/repositories/trainer_repository.dart';
import 'package:gym_management_app/repositories/workout_repository.dart';

void main() {
  runZonedGuarded(
    () {
      WidgetsFlutterBinding.ensureInitialized();

      FlutterError.onError = (FlutterErrorDetails details) {
        FlutterError.presentError(details);
        developer.log(
          'Flutter Error',
          error: details.exception,
          stackTrace: details.stack,
        );
      };

      runApp(const MyApp());
    },
    (error, stack) {
      developer.log('Unhandled Error', error: error, stackTrace: stack);
    },
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
            create: (context) =>
                AuthBloc(context.read<AuthRepository>())
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
        child: MaterialApp(
          title: 'Gym Management App',
          theme: AppTheme.lightTheme,
          initialRoute: AppRoutes.splash,
          onGenerateRoute: AppRoutes.generateRoute,
          debugShowCheckedModeBanner: false,
        ),
      ),
    );
  }
}
