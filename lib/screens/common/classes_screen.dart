import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:gym_management_app/blocs/class/class_bloc.dart';
import 'package:gym_management_app/blocs/class/class_event.dart';
import 'package:gym_management_app/blocs/class/class_state.dart';
import 'package:gym_management_app/config/constants.dart';
import 'package:gym_management_app/models/class_model.dart';
import 'package:gym_management_app/models/trainer_model.dart';
import 'package:gym_management_app/repositories/trainer_repository.dart';

class ClassesScreen extends StatefulWidget {
  const ClassesScreen({super.key});

  @override
  State<ClassesScreen> createState() => _ClassesScreenState();
}

class _ClassesScreenState extends State<ClassesScreen>
    with SingleTickerProviderStateMixin {
  bool _loadingInitial = true;
  String? _userRole;
  String? _userId;
  late TabController _tabController;
  String _selectedType = 'all';

  final List<String> _classTypes = ['all', ...AppConstants.classTypes];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _loadInitialData();
  }

  Future<void> _loadInitialData() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _userRole = prefs.getString(AppConstants.userRoleKey);
      _userId = prefs.getString(AppConstants.userIdKey);
      _loadingInitial = false;
    });
    if (mounted) {
      context.read<ClassBloc>().add(const ClassEvent.started());
    }
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  bool get _isAdmin => _userRole == AppConstants.roleAdmin;

  List<ClassModel> _getFilteredClasses(List<ClassModel> classes) {
    var filtered = classes;
    if (_selectedType != 'all') {
      filtered = filtered.where((c) => c.type == _selectedType).toList();
    }
    return filtered;
  }

  List<ClassModel> _getUpcomingClasses(List<ClassModel> classes) {
    final filtered = _getFilteredClasses(classes);
    if (_isAdmin) return filtered; // Admins see all for management
    return filtered.where((c) => c.startTime.isAfter(DateTime.now())).toList()
      ..sort((a, b) => a.startTime.compareTo(b.startTime));
  }

  @override
  Widget build(BuildContext context) {
    if (_loadingInitial) {
      return const Scaffold(body: Center(child: CircularProgressIndicator()));
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(_isAdmin ? 'Manage Classes' : 'Classes'),
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(text: _isAdmin ? 'All Classes' : 'Browse'),
            const Tab(text: 'My Bookings'),
          ],
        ),
      ),
      body: Column(
        children: [
          _buildCategoryFilter(),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [_buildClassList(), _buildMyBookings()],
            ),
          ),
        ],
      ),
      floatingActionButton: _isAdmin
          ? FloatingActionButton.extended(
              onPressed: () => _showClassDialog(),
              icon: const Icon(Icons.add),
              label: const Text('Add Class'),
            )
          : null,
    );
  }

  Widget _buildCategoryFilter() {
    return Container(
      height: 50,
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _classTypes.length,
        padding: const EdgeInsets.symmetric(horizontal: 8),
        itemBuilder: (context, index) {
          final type = _classTypes[index];
          final isSelected = _selectedType == type;

          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: FilterChip(
              label: Text(type.toUpperCase()),
              selected: isSelected,
              onSelected: (selected) => setState(() => _selectedType = type),
            ),
          );
        },
      ),
    );
  }

  Widget _buildClassList() {
    return BlocConsumer<ClassBloc, ClassState>(
      listener: (context, state) {
        state.maybeWhen(
          error: (message) => ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Error: $message'),
              backgroundColor: Colors.red,
            ),
          ),
          orElse: () {},
        );
      },
      builder: (context, state) {
        return state.when(
          initial: () => const Center(child: CircularProgressIndicator()),
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (message) => Center(child: Text('Error: $message')),
          loaded: (classes) {
            final filtered = _getUpcomingClasses(classes);
            if (filtered.isEmpty) {
              return const Center(child: Text('No classes available'));
            }

            return RefreshIndicator(
              onRefresh: () async {
                context.read<ClassBloc>().add(const ClassEvent.started());
              },
              child: ListView.builder(
                padding: const EdgeInsets.all(16),
                itemCount: filtered.length,
                itemBuilder: (context, index) =>
                    _buildClassCard(filtered[index]),
              ),
            );
          },
        );
      },
    );
  }

  Widget _buildClassCard(ClassModel gymClass) {
    final spotsLeft = gymClass.maxCapacity - gymClass.bookedCount;
    final isFull = spotsLeft <= 0;
    final isPast = gymClass.startTime.isBefore(DateTime.now());

    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Chip(
                  label: Text(gymClass.type.toUpperCase()),
                  backgroundColor: _getTypeColor(gymClass.type),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      DateFormat('MMM dd, yyyy').format(gymClass.startTime),
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    Text(
                      '${DateFormat.Hm().format(gymClass.startTime)} - ${DateFormat.Hm().format(gymClass.endTime)}',
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        gymClass.name,
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      Text(gymClass.description),
                    ],
                  ),
                ),
                if (_isAdmin)
                  Row(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.edit, color: Colors.blue),
                        onPressed: () => _showClassDialog(gymClass: gymClass),
                      ),
                      IconButton(
                        icon: const Icon(Icons.delete, color: Colors.red),
                        onPressed: () => _confirmDelete(gymClass),
                      ),
                    ],
                  ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                const Icon(Icons.person, size: 16),
                Text(' ${gymClass.trainerName}'),
                const Spacer(),
                Icon(
                  Icons.people,
                  size: 16,
                  color: isFull ? Colors.red : Colors.green,
                ),
                Text(
                  ' $spotsLeft spots left',
                  style: TextStyle(color: isFull ? Colors.red : Colors.green),
                ),
              ],
            ),
            if (!_isAdmin && !isPast) ...[
              const SizedBox(height: 12),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: isFull ? null : () => _bookClass(gymClass),
                  child: Text(isFull ? 'Class Full' : 'Book Now'),
                ),
              ),
            ],
            if (isPast) ...[
              const SizedBox(height: 12),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 8),
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Text(
                  'PAST CLASS',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildMyBookings() {
    return const Center(child: Text('Your bookings will appear here'));
  }

  Color _getTypeColor(String type) {
    switch (type.toLowerCase()) {
      case 'yoga':
        return Colors.purple.shade100;
      case 'zumba':
        return Colors.pink.shade100;
      case 'boxing':
        return Colors.red.shade100;
      case 'crossfit':
        return Colors.orange.shade100;
      case 'pilates':
        return Colors.teal.shade100;
      default:
        return Colors.blue.shade100;
    }
  }

  void _bookClass(ClassModel gymClass) {
    if (_userId != null) {
      context.read<ClassBloc>().add(
        ClassEvent.bookClass(gymClass.id, _userId!),
      );
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Booking request sent for ${gymClass.name}')),
      );
    }
  }

  void _showClassDialog({ClassModel? gymClass}) async {
    final nameController = TextEditingController(text: gymClass?.name);
    final descController = TextEditingController(text: gymClass?.description);
    final capacityController = TextEditingController(
      text: gymClass?.maxCapacity.toString(),
    );
    String selectedType = gymClass?.type ?? AppConstants.classTypes.first;
    String? selectedTrainerId = gymClass?.trainerId;
    DateTime selectedDate = gymClass?.startTime ?? DateTime.now();
    TimeOfDay startTime = TimeOfDay.fromDateTime(
      gymClass?.startTime ?? DateTime.now(),
    );
    TimeOfDay endTime = TimeOfDay.fromDateTime(
      gymClass?.endTime ?? DateTime.now().add(const Duration(hours: 1)),
    );

    List<TrainerModel> trainers = [];
    try {
      trainers = await context.read<TrainerRepository>().getTrainers();
    } catch (e) {
      // Handle error
    }

    if (!mounted) return;

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (context) => StatefulBuilder(
        builder: (context, setModalState) => Padding(
          padding: EdgeInsets.only(
            left: 24,
            right: 24,
            top: 24,
            bottom: MediaQuery.of(context).viewInsets.bottom + 24,
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  gymClass == null ? 'Add New Class' : 'Edit Class',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: nameController,
                  decoration: const InputDecoration(
                    labelText: 'Class Name',
                    prefixIcon: Icon(Icons.class_),
                  ),
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: descController,
                  decoration: const InputDecoration(
                    labelText: 'Description',
                    prefixIcon: Icon(Icons.description),
                  ),
                  maxLines: 2,
                ),
                const SizedBox(height: 16),
                DropdownButtonFormField<String>(
                  initialValue: selectedTrainerId,
                  decoration: const InputDecoration(
                    labelText: 'Trainer',
                    prefixIcon: Icon(Icons.person),
                  ),
                  items: trainers
                      .map(
                        (t) => DropdownMenuItem(
                          value: t.id,
                          child: Text('${t.firstName} ${t.lastName}'),
                        ),
                      )
                      .toList(),
                  onChanged: (val) =>
                      setModalState(() => selectedTrainerId = val),
                  hint: const Text('Select Trainer'),
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        controller: capacityController,
                        decoration: const InputDecoration(
                          labelText: 'Max Capacity',
                          prefixIcon: Icon(Icons.people),
                        ),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: DropdownButtonFormField<String>(
                        initialValue: selectedType,
                        decoration: const InputDecoration(
                          labelText: 'Type',
                          prefixIcon: Icon(Icons.category),
                        ),
                        items: AppConstants.classTypes
                            .map(
                              (t) => DropdownMenuItem(
                                value: t,
                                child: Text(t.toUpperCase()),
                              ),
                            )
                            .toList(),
                        onChanged: (val) =>
                            setModalState(() => selectedType = val!),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                ListTile(
                  title: Text(
                    'Date: ${DateFormat('MMM dd, yyyy').format(selectedDate)}',
                  ),
                  trailing: const Icon(Icons.calendar_today),
                  onTap: () async {
                    final date = await showDatePicker(
                      context: context,
                      initialDate: selectedDate,
                      firstDate: DateTime.now().subtract(
                        const Duration(days: 365),
                      ),
                      lastDate: DateTime.now().add(const Duration(days: 365)),
                    );
                    if (date != null) setModalState(() => selectedDate = date);
                  },
                ),
                Row(
                  children: [
                    Expanded(
                      child: ListTile(
                        title: Text('Start: ${startTime.format(context)}'),
                        onTap: () async {
                          final time = await showTimePicker(
                            context: context,
                            initialTime: startTime,
                          );
                          if (time != null) {
                            setModalState(() => startTime = time);
                          }
                        },
                      ),
                    ),
                    Expanded(
                      child: ListTile(
                        title: Text('End: ${endTime.format(context)}'),
                        onTap: () async {
                          final time = await showTimePicker(
                            context: context,
                            initialTime: endTime,
                          );
                          if (time != null) setModalState(() => endTime = time);
                        },
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                ElevatedButton(
                  onPressed: () {
                    if (nameController.text.isNotEmpty &&
                        selectedTrainerId != null) {
                      final start = DateTime(
                        selectedDate.year,
                        selectedDate.month,
                        selectedDate.day,
                        startTime.hour,
                        startTime.minute,
                      );
                      final end = DateTime(
                        selectedDate.year,
                        selectedDate.month,
                        selectedDate.day,
                        endTime.hour,
                        endTime.minute,
                      );

                      Navigator.pop(context);
                      if (gymClass == null) {
                        context.read<ClassBloc>().add(
                          ClassEvent.createClass(
                            name: nameController.text,
                            description: descController.text,
                            trainerId: selectedTrainerId!,
                            maxCapacity: int.parse(capacityController.text),
                            startTime: start,
                            endTime: end,
                            type: selectedType,
                          ),
                        );
                      } else {
                        context.read<ClassBloc>().add(
                          ClassEvent.updateClass(
                            id: gymClass.id,
                            name: nameController.text,
                            description: descController.text,
                            maxCapacity: int.parse(capacityController.text),
                            startTime: start,
                            endTime: end,
                            type: selectedType,
                          ),
                        );
                      }
                    }
                  },
                  child: Text(
                    gymClass == null ? 'Create Class' : 'Update Class',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _confirmDelete(ClassModel gymClass) async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Delete Class'),
        content: Text('Are you sure you want to delete "${gymClass.name}"?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, true),
            style: TextButton.styleFrom(foregroundColor: Colors.red),
            child: const Text('Delete'),
          ),
        ],
      ),
    );

    if (confirmed == true && mounted) {
      context.read<ClassBloc>().add(ClassEvent.deleteClass(gymClass.id));
    }
  }
}
