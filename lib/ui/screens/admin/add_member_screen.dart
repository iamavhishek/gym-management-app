import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gym_management_app/core/blocs/member/member_bloc.dart';
import 'package:gym_management_app/core/blocs/member/member_event.dart';
import 'package:gym_management_app/core/blocs/member/member_state.dart';
import 'package:gym_management_app/core/blocs/plans/plans_bloc.dart';
import 'package:gym_management_app/core/blocs/plans/plans_event.dart';
import 'package:gym_management_app/core/blocs/plans/plans_state.dart';
import 'package:gym_management_app/core/models/payment_model.dart';

class AddMemberScreen extends StatefulWidget {
  final String? memberId;

  const AddMemberScreen({super.key, this.memberId});

  @override
  State<AddMemberScreen> createState() => _AddMemberScreenState();
}

class _AddMemberScreenState extends State<AddMemberScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _phoneController = TextEditingController();
  String? _selectedPlanId;

  @override
  void initState() {
    super.initState();
    context.read<PlansBloc>().add(const PlansEvent.started());
    if (widget.memberId != null) {
      context.read<MemberBloc>().add(
        MemberEvent.fetchMemberDetails(widget.memberId!),
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
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.memberId != null ? 'Edit Member' : 'Add Member'),
      ),
      body: MultiBlocListener(
        listeners: [
          BlocListener<MemberBloc, MemberState>(
            listener: (context, state) {
              if (state is MemberDetailLoaded) {
                final member = state.member;
                _firstNameController.text = member.user?.firstName ?? '';
                _lastNameController.text = member.user?.lastName ?? '';
                _emailController.text = member.user?.email ?? '';
                _phoneController.text = member.user?.phone ?? '';
                if (member.planId != null) {
                  setState(() => _selectedPlanId = member.planId);
                }
              } else if (state is MemberUpdateSuccess) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(state.message)),
                );
                Navigator.pop(context);
              } else if (state is MemberError) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Error: ${state.message}'),
                    backgroundColor: Colors.red,
                  ),
                );
              }
            },
          ),
          BlocListener<PlansBloc, PlansState>(
            listener: (context, state) {
              if (state is PlansLoaded &&
                  state.plans.isNotEmpty &&
                  _selectedPlanId == null) {
                setState(() => _selectedPlanId = state.plans.first.id);
              }
            },
          ),
        ],
        child: BlocBuilder<PlansBloc, PlansState>(
          builder: (context, state) {
            if (state is PlansLoading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is PlansLoaded) {
              return _buildForm(state.plans);
            } else if (state is PlansError) {
              return Center(
                child: Text('Error loading plans: ${state.message}'),
              );
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }

  Widget _buildForm(List<MembershipPlanModel> plans) {
    return SingleChildScrollView(
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
            if (widget.memberId == null) ...[
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
            if (widget.memberId == null) ...[
              const SizedBox(height: 24),
              Text(
                'Membership Plan',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(height: 16),
              if (plans.isEmpty)
                const Text('No plans available. Create a plan first.')
              else
                DropdownButtonFormField<String>(
                  initialValue: _selectedPlanId,
                  decoration: const InputDecoration(
                    labelText: 'Select Plan',
                    prefixIcon: Icon(Icons.card_membership),
                  ),
                  items: plans.map((plan) {
                    return DropdownMenuItem<String>(
                      value: plan.id,
                      child: Text(
                        '${plan.name} - रु ${plan.price} (${plan.duration} days)',
                      ),
                    );
                  }).toList(),
                  onChanged: (value) => setState(() => _selectedPlanId = value),
                  validator: (v) => v == null ? 'Select a plan' : null,
                ),
            ],
            const SizedBox(height: 32),
            BlocBuilder<MemberBloc, MemberState>(
              builder: (context, memberState) {
                final isLoading = memberState is MemberLoading;

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
                          widget.memberId != null
                              ? 'Update Member'
                              : 'Add Member',
                        ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  void _submit() {
    if (!_formKey.currentState!.validate()) return;
    if (widget.memberId == null && _selectedPlanId == null) return;

    if (widget.memberId != null) {
      // For update, password is optional (handled by backend or UI logic)
      final updateData = {
        'firstName': _firstNameController.text.trim(),
        'lastName': _lastNameController.text.trim(),
        'phone': _phoneController.text.trim(),
        // Add other update fields as needed
      };
      context.read<MemberBloc>().add(
        MemberEvent.updateMember(widget.memberId!, updateData),
      );
    } else {
      final data = {
        'email': _emailController.text.trim(),
        'password': _passwordController.text,
        'firstName': _firstNameController.text.trim(),
        'lastName': _lastNameController.text.trim(),
        'phone': _phoneController.text.trim(),
        'planId': _selectedPlanId,
      };

      context.read<MemberBloc>().add(MemberEvent.createMember(data));
    }
  }
}
