import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:gym_management_app/core/blocs/auth/auth_bloc.dart';
import 'package:gym_management_app/core/blocs/auth/auth_event.dart';
import 'package:gym_management_app/core/config/routes.dart';

class DashboardScaffold extends StatelessWidget {
  final String title;
  final Widget body;
  final Widget? bottomNavigationBar;
  final List<Widget>? actions;
  final Future<void> Function()? onRefresh;

  const DashboardScaffold({
    super.key,
    required this.title,
    required this.body,
    this.bottomNavigationBar,
    this.actions,
    this.onRefresh,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () => context.push(AppRoutes.notifications),
          ),
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              context.read<AuthBloc>().add(const AuthEvent.logout());
              context.go(AppRoutes.login);
            },
          ),
          if (actions != null) ...actions!,
        ],
      ),
      body: onRefresh != null
          ? RefreshIndicator(
              onRefresh: onRefresh!,
              child: body,
            )
          : body,
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}
