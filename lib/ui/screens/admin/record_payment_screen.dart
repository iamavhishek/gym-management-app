import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gym_management_app/core/blocs/member/member_bloc.dart';
import 'package:gym_management_app/core/blocs/member/member_event.dart';
import 'package:gym_management_app/core/blocs/member/member_state.dart';
import 'package:gym_management_app/core/blocs/payment/payment_bloc.dart';
import 'package:gym_management_app/core/blocs/payment/payment_event.dart';
import 'package:gym_management_app/core/blocs/payment/payment_state.dart';
import 'package:gym_management_app/core/blocs/plans/plans_bloc.dart';
import 'package:gym_management_app/core/blocs/plans/plans_event.dart';
import 'package:gym_management_app/core/blocs/plans/plans_state.dart';
import 'package:gym_management_app/core/models/member_model.dart';
import 'package:gym_management_app/core/models/payment_model.dart';
import 'package:gym_management_app/ui/config/theme.dart';
import 'package:intl/intl.dart';

class RecordPaymentScreen extends StatefulWidget {
  final String? initialMemberId;

  const RecordPaymentScreen({super.key, this.initialMemberId});

  @override
  State<RecordPaymentScreen> createState() => _RecordPaymentScreenState();
}

class _RecordPaymentScreenState extends State<RecordPaymentScreen> {
  MemberModel? _selectedMember;
  MembershipPlanModel? _selectedPlan;
  DateTime _startDate = DateTime.now();
  String _selectedMethod = 'cash';
  final _amountController = TextEditingController();
  final _notesController = TextEditingController();

  @override
  void initState() {
    super.initState();
    context.read<MemberBloc>().add(const MemberEvent.fetchMembers());
    context.read<PlansBloc>().add(const PlansEvent.started());
  }

  @override
  void dispose() {
    _amountController.dispose();
    _notesController.dispose();
    super.dispose();
  }

  void _onMembersLoaded(List<MemberModel> members) {
    if (widget.initialMemberId != null && _selectedMember == null) {
      try {
        setState(() {
          _selectedMember = members.firstWhere(
            (m) => m.id == widget.initialMemberId,
          );
        });
      } catch (_) {}
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Record New Payment',
          style: GoogleFonts.outfit(fontWeight: FontWeight.bold),
        ),
      ),
      body: BlocListener<PaymentBloc, PaymentState>(
        listener: (context, state) {
          if (state is PaymentSuccess) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.message)),
            );
            Navigator.pop(context);
          } else if (state is PaymentError) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Error: ${state.message}'),
                backgroundColor: Colors.red,
              ),
            );
          }
        },
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _buildSectionTitle('Transaction Details'),
              const SizedBox(height: 24),

              // Member Selector
              BlocConsumer<MemberBloc, MemberState>(
                listener: (context, state) {
                  if (state is MemberMembersLoaded) {
                    _onMembersLoaded(state.members);
                  }
                },
                builder: (context, state) {
                  if (state is MemberMembersLoaded) {
                    return DropdownButtonFormField<MemberModel>(
                      value: _selectedMember,
                      decoration: InputDecoration(
                        labelText: 'Select Member',
                        prefixIcon: const Icon(Icons.person_outline_rounded),
                        fillColor: AppTheme.surfaceLight,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide.none,
                        ),
                      ),
                      items: state.members.map((m) {
                        return DropdownMenuItem(
                          value: m,
                          child: Text(
                            '${m.user?.firstName} ${m.user?.lastName}',
                          ),
                        );
                      }).toList(),
                      onChanged: (val) => setState(() => _selectedMember = val),
                    );
                  }
                  return const Center(child: LinearProgressIndicator());
                },
              ),
              const SizedBox(height: 16),

              // Plan Selector
              BlocBuilder<PlansBloc, PlansState>(
                builder: (context, state) {
                  if (state is PlansLoaded) {
                    return DropdownButtonFormField<MembershipPlanModel>(
                      value: _selectedPlan,
                      decoration: InputDecoration(
                        labelText: 'Select Membership Plan',
                        prefixIcon: const Icon(Icons.card_membership_rounded),
                        fillColor: AppTheme.surfaceLight,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide.none,
                        ),
                      ),
                      items: state.plans.map((p) {
                        return DropdownMenuItem(
                          value: p,
                          child: Text('${p.name} - रु ${p.price}'),
                        );
                      }).toList(),
                      onChanged: (val) {
                        setState(() {
                          _selectedPlan = val;
                          if (val != null) {
                            _amountController.text = val.price;
                          }
                        });
                      },
                    );
                  }
                  return const Center(child: LinearProgressIndicator());
                },
              ),
              const SizedBox(height: 16),

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

              // Start Date Picker
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
                  'New Membership Start Date',
                  style: TextStyle(fontSize: 13, color: AppTheme.textSecondary),
                ),
                subtitle: Text(
                  DateFormat('MMM dd, yyyy').format(_startDate),
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: AppTheme.textMain,
                  ),
                ),
                trailing: const Icon(Icons.edit_calendar_rounded, size: 20),
                onTap: () async {
                  final picked = await showDatePicker(
                    context: context,
                    initialDate: _startDate,
                    firstDate: DateTime.now().subtract(
                      const Duration(days: 365),
                    ),
                    lastDate: DateTime.now().add(const Duration(days: 365)),
                  );
                  if (picked != null) {
                    setState(() => _startDate = picked);
                  }
                },
              ),
              const SizedBox(height: 16),

              // Payment Method
              DropdownButtonFormField<String>(
                value: _selectedMethod,
                decoration: InputDecoration(
                  labelText: 'Payment Method',
                  prefixIcon: const Icon(Icons.account_balance_wallet_outlined),
                  fillColor: AppTheme.surfaceLight,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                ),
                items: const [
                  DropdownMenuItem(value: 'cash', child: Text('Cash')),
                  DropdownMenuItem(value: 'qr', child: Text('QR Payment')),
                  DropdownMenuItem(value: 'card', child: Text('Card')),
                  DropdownMenuItem(
                    value: 'bank_transfer',
                    child: Text('Bank Transfer'),
                  ),
                ],
                onChanged: (val) => setState(() => _selectedMethod = val!),
              ),
              const SizedBox(height: 16),

              // Notes
              TextField(
                controller: _notesController,
                decoration: InputDecoration(
                  labelText: 'Transaction Notes',
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
              const SizedBox(height: 48),

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
                  'Record Transaction',
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: GoogleFonts.outfit(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: AppTheme.textMain,
      ),
    );
  }

  void _submit() {
    if (_selectedMember == null ||
        _selectedPlan == null ||
        _amountController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please fill all required fields')),
      );
      return;
    }

    context.read<PaymentBloc>().add(
      PaymentEvent.createPayment(
        memberId: _selectedMember!.id,
        planId: _selectedPlan!.id,
        amount: _amountController.text,
        paymentMethod: _selectedMethod,
        startDate: DateFormat('yyyy-MM-dd').format(_startDate),
        notes: _notesController.text,
        membershipId: _selectedMember!.activeMembershipId,
      ),
    );
  }
}
