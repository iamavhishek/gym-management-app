import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:gym_management_app/blocs/auth/auth_bloc.dart';
import 'package:gym_management_app/blocs/auth/auth_state.dart';
import 'package:gym_management_app/config/routes.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.maybeWhen(
          authenticated: (user) {
            String route = AppRoutes.memberDashboard;
            if (user.role == 'admin') route = AppRoutes.adminDashboard;
            if (user.role == 'trainer') route = AppRoutes.trainerDashboard;
            Navigator.pushReplacementNamed(context, route);
          },
          unauthenticated: (_) {
            Navigator.pushReplacementNamed(context, AppRoutes.login);
          },
          orElse: () {},
        );
      },
      child: const Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.fitness_center, size: 80, color: Colors.blue),
              SizedBox(height: 24),
              CircularProgressIndicator(),
            ],
          ),
        ),
      ),
    );
  }
}
