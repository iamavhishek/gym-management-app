import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gym_management_app/core/blocs/member/member_bloc.dart';
import 'package:gym_management_app/core/blocs/member/member_event.dart';
import 'package:gym_management_app/core/blocs/member/member_state.dart';
import 'package:gym_management_app/core/blocs/plans/plans_bloc.dart';
import 'package:gym_management_app/core/blocs/plans/plans_event.dart';
import 'package:gym_management_app/core/blocs/plans/plans_state.dart';
import 'package:gym_management_app/core/models/member_model.dart';
import 'package:gym_management_app/core/models/payment_model.dart';
import 'package:gym_management_app/ui/config/theme.dart';
import 'package:intl/intl.dart';

class EditMembershipScreen extends StatefulWidget {
  final String memberId;

  const EditMembershipScreen({super.key, required this.memberId});

  @override
  State<EditMembershipScreen> createState() => _EditMembershipScreenState();
}

class _EditMembershipScreenState extends State<EditMembershipScreen> {
  String? _selectedPlanId;
  String? _selectedStatus;
  DateTime? _expiryDate;
  final _notesController = TextEditingController();
  final _amountController = TextEditingController();

  @override
  void initState() {
    super.initState();
    context.read<MemberBloc>().add(
      MemberEvent.fetchMemberDetails(widget.memberId),
    );
    context.read<PlansBloc>().add(const PlansEvent.started());
  }

  @override
  void dispose() {
    _notesController.dispose();
    _amountController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Edit Membership',
          style: GoogleFonts.outfit(fontWeight: FontWeight.bold),
        ),
      ),
      body: MultiBlocListener(
        listeners: [
          BlocListener<MemberBloc, MemberState>(
            listener: (context, state) {
              if (state is MemberDetailLoaded) {
                final member = state.member;
                setState(() {
                  _selectedPlanId = member.planId;
                  _selectedStatus = member.status;
                  if (member.expiryDate != null) {
                    _expiryDate = DateTime.tryParse(member.expiryDate!);
                  }
                  _notesController.text = member.notes ?? '';

                  // Pre-fill amount from plan if plans are already loaded
                  final plansState = context.read<PlansBloc>().state;
                  if (plansState is PlansLoaded &&
                      member.planId != null &&
                      _amountController.text.isEmpty) {
                    try {
                      final plan = plansState.plans.firstWhere(
                        (p) => p.id == member.planId,
                      );
                      _amountController.text = plan.price;
                    } catch (_) {}
                  }
                });
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
              if (state is PlansLoaded) {
                final memberState = context.read<MemberBloc>().state;
                if (memberState is MemberDetailLoaded &&
                    _amountController.text.isEmpty) {
                  final planId = memberState.member.planId;
                  if (planId != null) {
                    try {
                      final plan = state.plans.firstWhere(
                        (p) => p.id == planId,
                      );
                      _amountController.text = plan.price;
                    } catch (_) {}
                  }
                }
              }
            },
          ),
        ],
        child: BlocBuilder<MemberBloc, MemberState>(
          builder: (context, memberState) {
            if (memberState is MemberLoading) {
              return const Center(child: CircularProgressIndicator());
            }

            return BlocBuilder<PlansBloc, PlansState>(
              builder: (context, plansState) {
                if (plansState is PlansLoading) {
                  return const Center(child: CircularProgressIndicator());
                }

                if (plansState is PlansLoaded &&
                    memberState is MemberDetailLoaded) {
                  return _buildForm(memberState.member, plansState.plans);
                }

                return const Center(child: Text('Something went wrong'));
              },
            );
          },
        ),
      ),
    );
  }

  Widget _buildForm(MemberModel member, List<MembershipPlanModel> plans) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _buildMemberInfo(member),
          const SizedBox(height: 32),
          Text(
            'Membership Modification',
            style: GoogleFonts.outfit(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: AppTheme.primaryBlue,
            ),
          ),
          const SizedBox(height: 24),

          // Amount
          TextField(
            controller: _amountController,
            decoration: InputDecoration(
              labelText: 'Payment Amount (रु)',
              prefixIcon: const Icon(Icons.payments_outlined),
              fillColor: AppTheme.surfaceLight,
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide.none,
              ),
            ),
            keyboardType: TextInputType.number,
          ),
          const SizedBox(height: 16),

          // Status Selector
          DropdownButtonFormField<String>(
            value: _selectedStatus,
            decoration: InputDecoration(
              labelText: 'Membership Status',
              prefixIcon: const Icon(Icons.info_outline),
              fillColor: AppTheme.surfaceLight,
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide.none,
              ),
            ),
            items: const [
              DropdownMenuItem(value: 'active', child: Text('Active')),
              DropdownMenuItem(value: 'expired', child: Text('Expired')),
              DropdownMenuItem(value: 'frozen', child: Text('Frozen')),
              DropdownMenuItem(value: 'inactive', child: Text('Inactive')),
            ],
            onChanged: (val) => setState(() => _selectedStatus = val),
          ),
          const SizedBox(height: 16),

          // Expiry Date Picker
          ListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 12),
            tileColor: AppTheme.surfaceLight,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            leading: const Icon(
              Icons.calendar_month,
              color: AppTheme.primaryBlue,
            ),
            title: const Text(
              'Expiry Date',
              style: TextStyle(fontSize: 13, color: AppTheme.textSecondary),
            ),
            subtitle: Text(
              _expiryDate != null
                  ? DateFormat('MMM dd, yyyy').format(_expiryDate!)
                  : 'Select Date',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: AppTheme.textMain,
              ),
            ),
            trailing: const Icon(Icons.edit_calendar_rounded, size: 20),
            onTap: () async {
              final picked = await showDatePicker(
                context: context,
                initialDate: _expiryDate ?? DateTime.now(),
                firstDate: DateTime.now().subtract(const Duration(days: 365)),
                lastDate: DateTime.now().add(const Duration(days: 1825)),
              );
              if (picked != null) {
                setState(() => _expiryDate = picked);
              }
            },
          ),
          const SizedBox(height: 16),

          // Notes
          TextField(
            controller: _notesController,
            decoration: InputDecoration(
              labelText: 'Notes/Remarks',
              alignLabelWithHint: true,
              prefixIcon: const Icon(Icons.note_alt_outlined),
              fillColor: AppTheme.surfaceLight,
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide.none,
              ),
            ),
            maxLines: 3,
          ),
          const SizedBox(height: 40),

          ElevatedButton(
            onPressed: _submit,
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              backgroundColor: AppTheme.primaryBlue,
            ),
            child: Text(
              'Apply Modifications',
              style: GoogleFonts.inter(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMemberInfo(MemberModel member) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: AppTheme.premiumDecoration(),
      child: Row(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: AppTheme.primaryBlue.withOpacity(0.1),
            child: Text(
              member.user?.firstName[0] ?? 'M',
              style: GoogleFonts.outfit(
                fontWeight: FontWeight.bold,
                color: AppTheme.primaryBlue,
                fontSize: 24,
              ),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${member.user?.firstName} ${member.user?.lastName}',
                  style: GoogleFonts.outfit(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Text(
                  'Membership: ${member.membershipNumber}',
                  style: GoogleFonts.inter(
                    fontSize: 12,
                    color: AppTheme.textSecondary,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _submit() {
    final updates = {
      'planId': _selectedPlanId,
      'status': _selectedStatus,
      'expiryDate': _expiryDate != null
          ? DateFormat('yyyy-MM-dd').format(_expiryDate!)
          : null,
      'amount': _amountController.text.trim(),
      'notes': _notesController.text.trim(),
    };

    context.read<MemberBloc>().add(
      MemberEvent.updateMember(widget.memberId, updates),
    );
  }
}
