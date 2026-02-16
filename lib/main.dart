import 'dart:async';
import 'dart:developer' as developer;

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gym_core/blocs/auth/auth_bloc.dart';
import 'package:gym_core/config/flavor.dart';
import 'package:gym_ui/config/app_router.dart';
import 'package:gym_ui/config/theme.dart';
import 'package:gym_ui/widgets/gym_app_wrapper.dart';

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

      runApp(const GymUnifiedApp());
    },
    (error, stack) {
      developer.log('Unhandled Error', error: error, stackTrace: stack);
    },
  );
}

class GymUnifiedApp extends StatefulWidget {
  const GymUnifiedApp({super.key});

  @override
  State<GymUnifiedApp> createState() => _GymUnifiedAppState();
}

class _GymUnifiedAppState extends State<GymUnifiedApp> {
  final AppFlavor _flavor = AppFlavor.fromString(
    const String.fromEnvironment('APP_FLAVOR'),
  );

  @override
  Widget build(BuildContext context) {
    return GymAppWrapper(
      child: Builder(
        builder: (context) {
          return MaterialApp.router(
            title: _getAppTitle(),
            theme: AppTheme.lightTheme,
            routerConfig: AppRouter.createRouter(
              context.read<AuthBloc>(),
              flavor: _flavor,
            ),
            debugShowCheckedModeBanner: false,
          );
        },
      ),
    );
  }

  String _getAppTitle() {
    switch (_flavor) {
      case AppFlavor.admin:
        return 'Gym Admin';
      case AppFlavor.trainer:
        return 'Gym Trainer';
      case AppFlavor.member:
        return 'Gym Member';
      default:
        return 'Gym Management System';
    }
  }
}
