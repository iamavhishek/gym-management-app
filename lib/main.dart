import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:gym_management_app/core/blocs/auth/auth_bloc.dart';
import 'package:gym_management_app/core/config/environment.dart';
import 'package:gym_management_app/core/config/flavor.dart';
import 'package:gym_management_app/core/utils/logger.dart';
import 'package:gym_management_app/ui/config/app_router.dart';
import 'package:gym_management_app/ui/config/theme.dart';
import 'package:gym_management_app/ui/widgets/gym_app_wrapper.dart';

void main() {
  runZonedGuarded(
    () {
      WidgetsFlutterBinding.ensureInitialized();

      FlutterError.onError = (FlutterErrorDetails details) {
        FlutterError.presentError(details);
        GymLogger.error(
          'Flutter Error',
          error: details.exception,
          stackTrace: details.stack,
        );
      };

      runApp(const GymUnifiedApp());
    },
    (error, stack) {
      GymLogger.error('Unhandled Error', error: error, stackTrace: stack);
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

  final AppEnvironment _environment = AppEnvironment.fromString(
    const String.fromEnvironment('APP_ENV'),
  );

  @override
  Widget build(BuildContext context) {
    return GymAppWrapper(
      environment: _environment,
      child: AppRouterContainer(
        flavor: _flavor,
        title: _getAppTitle(),
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

class AppRouterContainer extends StatefulWidget {
  final AppFlavor flavor;
  final String title;

  const AppRouterContainer({
    super.key,
    required this.flavor,
    required this.title,
  });

  @override
  State<AppRouterContainer> createState() => _AppRouterContainerState();
}

class _AppRouterContainerState extends State<AppRouterContainer> {
  late final GoRouter _router;

  @override
  void initState() {
    super.initState();
    _router = AppRouter.createRouter(
      context.read<AuthBloc>(),
      flavor: widget.flavor,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: widget.title,
      theme: AppTheme.lightTheme,
      routerConfig: _router,
      debugShowCheckedModeBanner: false,
    );
  }
}
