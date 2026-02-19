import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gym_management_app/core/blocs/workout/workout_bloc.dart';
import 'package:gym_management_app/core/blocs/workout/workout_event.dart';
import 'package:gym_management_app/core/blocs/workout/workout_state.dart';
import 'package:gym_management_app/core/config/routes.dart';
import 'package:gym_management_app/core/models/workout_model.dart';
import 'package:gym_management_app/ui/config/theme.dart';
import 'package:shared_preferences/shared_preferences.dart';

class WorkoutPlanScreen extends StatefulWidget {
  final String? memberId;
  final String? trainerId;
  final bool isTemplateMode;

  const WorkoutPlanScreen({
    super.key,
    this.memberId,
    this.trainerId,
    this.isTemplateMode = false,
  });

  @override
  State<WorkoutPlanScreen> createState() => _WorkoutPlanScreenState();
}

class _WorkoutPlanScreenState extends State<WorkoutPlanScreen> {
  String? _currentUserId;
  String? _userRole;

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  Future<void> _loadData() async {
    final prefs = await SharedPreferences.getInstance();
    _currentUserId = prefs.getString('user_id');
    _userRole = prefs.getString('user_role');

    if (mounted) {
      if (widget.memberId != null) {
        context.read<WorkoutBloc>().add(
          WorkoutEvent.fetchPlans(memberId: widget.memberId),
        );
      } else if (widget.trainerId != null) {
        context.read<WorkoutBloc>().add(
          WorkoutEvent.fetchPlans(trainerId: widget.trainerId),
        );
      } else if (widget.isTemplateMode) {
        context.read<WorkoutBloc>().add(
          const WorkoutEvent.fetchPlans(isTemplate: true),
        );
      } else if (_currentUserId != null) {
        context.read<WorkoutBloc>().add(
          WorkoutEvent.fetchPlans(userId: _currentUserId),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    String title = 'Workout Plan';
    if (widget.memberId != null) {
      title = 'Client Workout Plan';
    } else if (widget.trainerId != null) {
      title = 'Trainer Assignments';
    } else if (widget.isTemplateMode) {
      title = 'Workout Templates';
    } else if (_userRole == 'trainer') {
      title = 'My Clients\' Plans';
    } else {
      title = 'My Workout Plan';
    }

    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: BlocConsumer<WorkoutBloc, WorkoutState>(
        listener: (context, state) {
          if (state is WorkoutSuccess) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.message)),
            );
            if (state.message.contains('deleted') ||
                state.message.contains('updated')) {
              _loadData();
            }
          } else if (state is WorkoutError) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Error: ${state.message}'),
                backgroundColor: const Color(0xFFEF4444),
              ),
            );
          }
        },
        builder: (context, state) {
          if (state is WorkoutLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is WorkoutLoaded) {
            return _buildPlansList(state.plans);
          } else if (state is WorkoutError) {
            return Center(child: Text('Error: ${state.message}'));
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
      floatingActionButton: _userRole == 'trainer'
          ? FloatingActionButton(
              onPressed: () {
                if (widget.memberId != null) {
                  context.push(
                    '${AppRoutes.trainerWorkoutsAdd}/${widget.memberId}',
                  );
                } else {
                  context.push(
                    AppRoutes.trainerWorkoutsAdd,
                    extra: {'isTemplate': widget.isTemplateMode},
                  );
                }
              },
              child: const Icon(Icons.add),
            )
          : null,
    );
  }

  Widget _buildPlansList(List<WorkoutPlanModel> plans) {
    if (plans.isEmpty) {
      return const Center(child: Text('No workout plans assigned yet'));
    }

    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: plans.length,
      itemBuilder: (context, index) => _buildPlanCard(plans[index]),
    );
  }

  Widget _buildPlanCard(WorkoutPlanModel plan) {
    String subtitle = plan.description;
    if (_userRole == 'trainer' && plan.member != null) {
      final user = plan.member!['user'];
      if (user != null) {
        subtitle =
            'Client: ${user['firstName']} ${user['lastName']}\n$subtitle';
      }
    } else if (_userRole == 'member' && plan.trainer != null) {
      final user = plan.trainer!['user'];
      if (user != null) {
        subtitle =
            'Trainer: ${user['firstName']} ${user['lastName']}\n$subtitle';
      }
    }

    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      child: ExpansionTile(
        title: Row(
          children: [
            Expanded(
              child: Text(
                plan.name,
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.bold,
                  color: AppTheme.textMain,
                ),
              ),
            ),
            if (_userRole == 'trainer') ...[
              IconButton(
                icon: const Icon(Icons.edit, size: 20),
                onPressed: () => _editPlan(plan),
              ),
              IconButton(
                icon: const Icon(Icons.delete, size: 20),
                onPressed: () => _deletePlan(plan),
              ),
            ],
          ],
        ),
        subtitle: Text(subtitle),
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Schedule',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const Divider(),
                if (plan.sessions.isEmpty)
                  const Text('No sessions defined for this plan')
                else
                  ...plan.sessions.map((session) => _buildSessionItem(session)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSessionItem(WorkoutSessionModel session) {
    final dayName = _getDayName(session.dayOfWeek);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          Container(
            width: 80,
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              color: AppTheme.primaryBlue.withOpacity(0.08),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              dayName,
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: AppTheme.primaryBlue,
              ),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  session.exercise?.name ?? 'Unknown Exercise',
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w500,
                    color: AppTheme.textMain,
                  ),
                ),
                Text(
                  '${session.sets} sets x ${session.reps} reps',
                  style: GoogleFonts.inter(
                    fontSize: 12,
                    color: AppTheme.textSecondary,
                  ),
                ),
              ],
            ),
          ),
          if (!widget.isTemplateMode)
            IconButton(
              icon: const Icon(Icons.check_circle_outline),
              onPressed: () => _logWorkout(session),
            ),
        ],
      ),
    );
  }

  String _getDayName(int day) {
    switch (day) {
      case 1:
        return 'Monday';
      case 2:
        return 'Tuesday';
      case 3:
        return 'Wednesday';
      case 4:
        return 'Thursday';
      case 5:
        return 'Friday';
      case 6:
        return 'Saturday';
      case 7:
        return 'Sunday';
      default:
        return 'Any';
    }
  }

  void _logWorkout(WorkoutSessionModel session) {
    final memberId = widget.memberId ?? _currentUserId;
    if (memberId == null) return;

    final log = WorkoutLogModel(
      id: '', // Backend will generate
      memberId: memberId,
      exerciseId: session.exerciseId ?? '',
      sessionDate: DateTime.now().toIso8601String(),
      setsCompleted: session.sets,
      repsCompleted: session.reps,
      weightUsed: session.weight,
      notes: 'Logged from app',
    );

    context.read<WorkoutBloc>().add(WorkoutEvent.logWorkout(log));
  }

  void _editPlan(WorkoutPlanModel plan) {
    context
        .push(
          AppRoutes.trainerWorkoutsAdd,
          extra: {'plan': plan, 'isTemplate': widget.isTemplateMode},
        )
        .then((_) => _loadData());
  }

  void _deletePlan(WorkoutPlanModel plan) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('Delete Plan'),
        content: Text('Are you sure you want to delete "${plan.name}"?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(ctx);
              context.read<WorkoutBloc>().add(
                WorkoutEvent.deletePlan(plan.id),
              );
            },
            child: const Text(
              'Delete',
              style: TextStyle(color: Color(0xFFEF4444)),
            ),
          ),
        ],
      ),
    );
  }
}
