import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gym_management_app/core/blocs/member/member_bloc.dart';
import 'package:gym_management_app/core/blocs/member/member_event.dart';
import 'package:gym_management_app/core/blocs/member/member_state.dart';
import 'package:gym_management_app/core/blocs/workout/workout_bloc.dart';
import 'package:gym_management_app/core/blocs/workout/workout_event.dart';
import 'package:gym_management_app/core/blocs/workout/workout_state.dart';
import 'package:gym_management_app/core/models/member_model.dart';
import 'package:gym_management_app/core/models/workout_model.dart';
import 'package:gym_management_app/ui/config/theme.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CreateWorkoutScreen extends StatefulWidget {
  final String? memberId;
  final bool isTemplate;
  final WorkoutPlanModel? plan;

  const CreateWorkoutScreen({
    super.key,
    this.memberId,
    this.isTemplate = false,
    this.plan,
  });

  @override
  State<CreateWorkoutScreen> createState() => _CreateWorkoutScreenState();
}

class _CreateWorkoutScreenState extends State<CreateWorkoutScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _descriptionController = TextEditingController();
  DateTime? _startDate = DateTime.now();
  DateTime? _endDate = DateTime.now().add(const Duration(days: 30));
  final List<WorkoutSessionModel> _sessions = [];
  String? _trainerId;
  String? _selectedMemberId;

  @override
  void initState() {
    super.initState();
    _selectedMemberId = widget.memberId;
    _loadTrainerId();
    context.read<WorkoutBloc>().add(const WorkoutEvent.fetchExercises());
    if (widget.memberId == null && !widget.isTemplate) {
      context.read<MemberBloc>().add(const MemberEvent.fetchClients());
    }

    if (widget.plan != null) {
      _nameController.text = widget.plan!.name;
      _descriptionController.text = widget.plan!.description;
      if (widget.plan!.startDate != null) {
        _startDate = DateTime.parse(widget.plan!.startDate!);
      }
      if (widget.plan!.endDate != null) {
        _endDate = DateTime.parse(widget.plan!.endDate!);
      }
      _selectedMemberId = widget.plan!.memberId;
      _sessions.addAll(widget.plan!.sessions);
    }
  }

  Future<void> _loadTrainerId() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _trainerId = prefs.getString('user_id');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.plan != null
              ? (widget.isTemplate ? 'Edit Template' : 'Edit Plan')
              : (widget.isTemplate
                    ? 'Create Workout Template'
                    : 'Create Workout Plan'),
        ),
      ),
      body: BlocConsumer<WorkoutBloc, WorkoutState>(
        listener: (context, state) {
          if (state is WorkoutSuccess) {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text(state.message)));
            Navigator.pop(context);
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
          } else if (state is WorkoutExercisesLoaded) {
            return _buildBody(state.exercises);
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16),
        child: ElevatedButton(
          onPressed: _submit,
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 16),
          ),
          child: Text(
            widget.plan != null ? 'Update Workout Plan' : 'Create Workout Plan',
          ),
        ),
      ),
    );
  }

  Widget _buildBody(List<WorkoutExerciseModel> exercises) {
    if (widget.isTemplate) {
      return _buildForm(exercises, []);
    }
    if (widget.memberId == null) {
      return BlocBuilder<MemberBloc, MemberState>(
        builder: (context, state) {
          if (state is MemberMembersLoaded) {
            return _buildForm(exercises, state.members);
          } else if (state is MemberLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is MemberError) {
            return Center(child: Text('Error: ${state.message}'));
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      );
    } else {
      return _buildForm(exercises, []);
    }
  }

  Widget _buildForm(
    List<WorkoutExerciseModel> exercises,
    List<MemberModel> members,
  ) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (widget.memberId == null && !widget.isTemplate) ...[
              DropdownButtonFormField<String>(
                initialValue: _selectedMemberId,
                decoration: const InputDecoration(
                  labelText: 'Select Client',
                  prefixIcon: Icon(Icons.person),
                ),
                items: members.map((m) {
                  return DropdownMenuItem(
                    value: m.id,
                    child: Text('${m.user?.firstName} ${m.user?.lastName}'),
                  );
                }).toList(),
                onChanged: (v) => setState(() => _selectedMemberId = v),
                validator: (v) => v == null ? 'Please select a client' : null,
              ),
              const SizedBox(height: 16),
            ],
            TextFormField(
              controller: _nameController,
              decoration: const InputDecoration(
                labelText: 'Plan Name',
                hintText: 'e.g., Weight Loss Alpha',
              ),
              validator: (v) => v!.isEmpty ? 'Required' : null,
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: _descriptionController,
              decoration: const InputDecoration(labelText: 'Description'),
              maxLines: 2,
            ),
            const SizedBox(height: 16),
            if (!widget.isTemplate) ...[
              Row(
                children: [
                  Expanded(
                    child: ListTile(
                      title: const Text('Start Date'),
                      subtitle: Text(
                        _startDate != null
                            ? DateFormat('yyyy-MM-dd').format(_startDate!)
                            : 'Select Date',
                      ),
                      onTap: () => _selectDate(context, true),
                    ),
                  ),
                  Expanded(
                    child: ListTile(
                      title: const Text('End Date'),
                      subtitle: Text(
                        _endDate != null
                            ? DateFormat('yyyy-MM-dd').format(_endDate!)
                            : 'Select Date',
                      ),
                      onTap: () => _selectDate(context, false),
                    ),
                  ),
                ],
              ),
              const Divider(height: 32),
            ] else
              const Padding(
                padding: EdgeInsets.only(bottom: 24.0),
                child: Text(
                  'Template Logic: Days are relative to start date when assigned.',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: AppTheme.textSecondary,
                  ),
                ),
              ),
            const Divider(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Sessions',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                TextButton.icon(
                  onPressed: () => _addSessionDialog(exercises),
                  icon: const Icon(Icons.add),
                  label: const Text('Add Session'),
                ),
              ],
            ),
            if (_sessions.isEmpty)
              const Center(
                child: Padding(
                  padding: EdgeInsets.all(24),
                  child: Text(
                    'No sessions added yet',
                    style: TextStyle(color: AppTheme.textSecondary),
                  ),
                ),
              )
            else
              ..._sessions.asMap().entries.map(
                (entry) => _buildSessionCard(entry.key, entry.value, exercises),
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildSessionCard(
    int index,
    WorkoutSessionModel session,
    List<WorkoutExerciseModel> exercises,
  ) {
    // Safely find exercise or fallback to prevent crash
    final exercise = exercises.firstWhere(
      (e) => e.id == session.exerciseId,
      orElse: () =>
          const WorkoutExerciseModel(id: '', name: 'Unknown Exercise'),
    );

    final days = [
      'Monday',
      'Tuesday',
      'Wednesday',
      'Thursday',
      'Friday',
      'Saturday',
      'Sunday',
    ];
    // Ensure dayOfWeek is valid (1-7)
    final dayName = (session.dayOfWeek >= 1 && session.dayOfWeek <= 7)
        ? days[session.dayOfWeek - 1]
        : 'Day ${session.dayOfWeek}';

    return Card(
      margin: const EdgeInsets.only(bottom: 8),
      child: ListTile(
        title: Text('${exercise.name} ($dayName)'),
        subtitle: Text(
          '${session.notes?.isNotEmpty == true ? '${session.notes} • ' : ''}${session.sets} sets x ${session.reps} reps • ${session.weight?.isNotEmpty == true ? session.weight : 'Bodyweight'}',
        ),
        trailing: IconButton(
          icon: const Icon(Icons.delete, color: Color(0xFFEF4444)),
          onPressed: () => setState(() => _sessions.removeAt(index)),
        ),
      ),
    );
  }

  Future<void> _selectDate(BuildContext context, bool isStart) async {
    final initialDate = (isStart ? _startDate : _endDate) ?? DateTime.now();
    final picked = await showDatePicker(
      context: context,
      initialDate: initialDate,
      firstDate: DateTime.now().subtract(const Duration(days: 365)),
      lastDate: DateTime.now().add(const Duration(days: 365 * 2)),
    );
    if (picked != null) {
      setState(() {
        if (isStart) {
          _startDate = picked;
          if (_endDate != null && _endDate!.isBefore(_startDate!)) {
            _endDate = _startDate!.add(const Duration(days: 30));
          }
        } else {
          _endDate = picked;
        }
      });
    }
  }

  void _addSessionDialog(List<WorkoutExerciseModel> exercises) {
    String? selectedExerciseId = exercises.isNotEmpty
        ? exercises.first.id
        : null;
    int dayOfWeek = 1;
    final setsController = TextEditingController(text: '3');
    final repsController = TextEditingController(text: '12');
    final weightController = TextEditingController();
    final notesController = TextEditingController();

    showDialog(
      context: context,
      builder: (context) => StatefulBuilder(
        builder: (context, setDialogState) => AlertDialog(
          title: const Text('Add Session'),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                DropdownButtonFormField<String>(
                  initialValue: selectedExerciseId,
                  decoration: const InputDecoration(labelText: 'Exercise'),
                  items: exercises
                      .map(
                        (e) =>
                            DropdownMenuItem(value: e.id, child: Text(e.name)),
                      )
                      .toList(),
                  onChanged: (v) =>
                      setDialogState(() => selectedExerciseId = v),
                ),
                DropdownButtonFormField<int>(
                  initialValue: dayOfWeek,
                  decoration: const InputDecoration(labelText: 'Day of Week'),
                  items: List.generate(7, (i) {
                    final days = [
                      'Monday',
                      'Tuesday',
                      'Wednesday',
                      'Thursday',
                      'Friday',
                      'Saturday',
                      'Sunday',
                    ];
                    return DropdownMenuItem(value: i + 1, child: Text(days[i]));
                  }),
                  onChanged: (v) => setDialogState(() => dayOfWeek = v!),
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: setsController,
                        decoration: const InputDecoration(labelText: 'Sets'),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: TextField(
                        controller: repsController,
                        decoration: const InputDecoration(labelText: 'Reps'),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                  ],
                ),
                TextField(
                  controller: weightController,
                  decoration: const InputDecoration(
                    labelText: 'Weight (e.g., 20kg or Bodyweight)',
                  ),
                ),
                TextField(
                  controller: notesController,
                  decoration: const InputDecoration(
                    labelText: 'Notes / Day Focus (e.g., Leg Day)',
                  ),
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: selectedExerciseId == null
                  ? null
                  : () {
                      if (selectedExerciseId != null) {
                        setState(() {
                          _sessions.add(
                            WorkoutSessionModel(
                              id: '',
                              exerciseId: selectedExerciseId,
                              dayOfWeek: dayOfWeek,
                              sets: int.tryParse(setsController.text) ?? 0,
                              reps: int.tryParse(repsController.text) ?? 0,
                              weight: weightController.text,
                              notes: notesController.text,
                              order: _sessions.length,
                            ),
                          );
                        });
                        Navigator.pop(context);
                      }
                    },
              child: const Text('Add'),
            ),
          ],
        ),
      ),
    );
  }

  void _submit() {
    if (!_formKey.currentState!.validate()) return;
    if ((_selectedMemberId == null && !widget.isTemplate) ||
        _trainerId == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Missing Member or Trainer ID')),
      );
      return;
    }
    if (_sessions.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('At least one session is required')),
      );
      return;
    }

    final plan = WorkoutPlanModel(
      id: widget.plan?.id ?? '',
      name: _nameController.text.trim(),
      description: _descriptionController.text.trim(),
      memberId: _selectedMemberId,
      trainerId: _trainerId!,
      startDate: _startDate != null
          ? DateFormat('yyyy-MM-dd').format(_startDate!)
          : null,
      endDate: _endDate != null
          ? DateFormat('yyyy-MM-dd').format(_endDate!)
          : null,
      isTemplate: widget.isTemplate,
      sessions: _sessions,
    );

    if (widget.plan != null) {
      context.read<WorkoutBloc>().add(WorkoutEvent.updatePlan(plan));
    } else {
      context.read<WorkoutBloc>().add(WorkoutEvent.createPlan(plan));
    }
  }
}
