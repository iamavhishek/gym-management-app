import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gym_management_app/blocs/trainer/trainer_bloc.dart';
import 'package:gym_management_app/blocs/trainer/trainer_event.dart';
import 'package:gym_management_app/blocs/trainer/trainer_state.dart';

class AddTrainerScreen extends StatefulWidget {
  final String? trainerId;

  const AddTrainerScreen({super.key, this.trainerId});

  @override
  State<AddTrainerScreen> createState() => _AddTrainerScreenState();
}

class _AddTrainerScreenState extends State<AddTrainerScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _specializationController = TextEditingController();
  final _certificationController = TextEditingController();
  final _experienceController = TextEditingController();

  @override
  void initState() {
    super.initState();
    if (widget.trainerId != null) {
      context.read<TrainerBloc>().add(
        TrainerEvent.fetchTrainerDetails(widget.trainerId!),
      );
    }
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _firstNameController.dispose();
    _lastNameController.dispose();
    _phoneController.dispose();
    _specializationController.dispose();
    _certificationController.dispose();
    _experienceController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.trainerId != null ? 'Edit Trainer' : 'Add Trainer'),
      ),
      body: BlocListener<TrainerBloc, TrainerState>(
        listener: (context, state) {
          state.maybeWhen(
            trainerLoaded: (trainer) {
              _firstNameController.text = trainer.firstName;
              _lastNameController.text = trainer.lastName;
              _emailController.text = trainer.email;
              _phoneController.text = trainer.phone;
              _specializationController.text = trainer.specialization;
              _certificationController.text = trainer.certifications ?? '';
              _experienceController.text = trainer.experience?.toString() ?? '';
            },
            success: (message) {
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text(message)));
              Navigator.pop(context);
            },
            error: (message) => ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Error: $message'),
                backgroundColor: Colors.red,
              ),
            ),
            orElse: () {},
          );
        },
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Personal Information',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        controller: _firstNameController,
                        decoration: const InputDecoration(
                          labelText: 'First Name',
                          prefixIcon: Icon(Icons.person),
                        ),
                        validator: (v) => v!.isEmpty ? 'Required' : null,
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: TextFormField(
                        controller: _lastNameController,
                        decoration: const InputDecoration(
                          labelText: 'Last Name',
                          prefixIcon: Icon(Icons.person),
                        ),
                        validator: (v) => v!.isEmpty ? 'Required' : null,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _emailController,
                  decoration: const InputDecoration(
                    labelText: 'Email',
                    prefixIcon: Icon(Icons.email),
                  ),
                  keyboardType: TextInputType.emailAddress,
                  validator: (v) {
                    if (v!.isEmpty) return 'Required';
                    if (!v.contains('@')) return 'Invalid email';
                    return null;
                  },
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _phoneController,
                  decoration: const InputDecoration(
                    labelText: 'Phone (optional)',
                    prefixIcon: Icon(Icons.phone),
                  ),
                  keyboardType: TextInputType.phone,
                ),
                if (widget.trainerId == null) ...[
                  const SizedBox(height: 16),
                  TextFormField(
                    controller: _passwordController,
                    decoration: const InputDecoration(
                      labelText: 'Password',
                      prefixIcon: Icon(Icons.lock),
                    ),
                    obscureText: true,
                    validator: (v) {
                      if (v!.isEmpty) return 'Required';
                      if (v.length < 6) return 'At least 6 characters';
                      return null;
                    },
                  ),
                ],
                const SizedBox(height: 24),
                Text(
                  'Professional Details',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _specializationController,
                  decoration: const InputDecoration(
                    labelText: 'Specialization',
                    prefixIcon: Icon(Icons.fitness_center),
                    hintText: 'e.g. Strength Training, Yoga, Cardio',
                  ),
                  validator: (v) => v!.isEmpty ? 'Required' : null,
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _certificationController,
                  decoration: const InputDecoration(
                    labelText: 'Certification (optional)',
                    prefixIcon: Icon(Icons.verified),
                    hintText: 'e.g. ACE, NASM, ISSA',
                  ),
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _experienceController,
                  decoration: const InputDecoration(
                    labelText: 'Experience (years)',
                    prefixIcon: Icon(Icons.work_history),
                  ),
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(height: 32),
                BlocBuilder<TrainerBloc, TrainerState>(
                  builder: (context, state) {
                    final isLoading = state.maybeWhen(
                      loading: () => true,
                      orElse: () => false,
                    );

                    return ElevatedButton(
                      onPressed: isLoading ? null : _submit,
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                      ),
                      child: isLoading
                          ? const SizedBox(
                              height: 20,
                              width: 20,
                              child: CircularProgressIndicator(strokeWidth: 2),
                            )
                          : Text(
                              widget.trainerId != null
                                  ? 'Update Trainer'
                                  : 'Add Trainer',
                            ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _submit() {
    if (!_formKey.currentState!.validate()) return;

    if (widget.trainerId != null) {
      // Update
      final updateData = {
        'firstName': _firstNameController.text.trim(),
        'lastName': _lastNameController.text.trim(),
        'phone': _phoneController.text.trim().isNotEmpty
            ? _phoneController.text.trim()
            : null,
        'specialization': _specializationController.text.trim(),
        'certification': _certificationController.text.trim().isNotEmpty
            ? _certificationController.text.trim()
            : null,
        'experience': _experienceController.text.trim().isNotEmpty
            ? int.tryParse(_experienceController.text.trim())
            : null,
      };

      context.read<TrainerBloc>().add(
        TrainerEvent.updateTrainer(widget.trainerId!, updateData),
      );
    } else {
      // Create
      final data = {
        'email': _emailController.text.trim(),
        'password': _passwordController.text, // Required for create
        'firstName': _firstNameController.text.trim(),
        'lastName': _lastNameController.text.trim(),
        'phone': _phoneController.text.trim().isNotEmpty
            ? _phoneController.text.trim()
            : null,
        'specialization': _specializationController.text.trim(),
        'certification': _certificationController.text.trim().isNotEmpty
            ? _certificationController.text.trim()
            : null,
        'experience': _experienceController.text.trim().isNotEmpty
            ? int.tryParse(_experienceController.text.trim())
            : null,
      };

      context.read<TrainerBloc>().add(TrainerEvent.createTrainer(data));
    }
  }
}
