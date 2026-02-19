import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
import 'package:intl/intl.dart';

class PaymentsScreen extends StatefulWidget {
  const PaymentsScreen({super.key});

  @override
  State<PaymentsScreen> createState() => _PaymentsScreenState();
}

class _PaymentsScreenState extends State<PaymentsScreen> {
  String _selectedFilter = 'all';

  @override
  void initState() {
    super.initState();
    context.read<PaymentBloc>().add(const PaymentEvent.fetchPayments());
    context.read<MemberBloc>().add(const MemberEvent.fetchMembers());
    context.read<PlansBloc>().add(const PlansEvent.started());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Payments Management'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () {
              context.read<PaymentBloc>().add(
                const PaymentEvent.fetchPayments(),
              );
              context.read<MemberBloc>().add(const MemberEvent.fetchMembers());
              context.read<PlansBloc>().add(const PlansEvent.started());
            },
          ),
        ],
      ),
      body: BlocConsumer<PaymentBloc, PaymentState>(
        listener: (context, state) {
          if (state is PaymentSuccess) {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text(state.message)));
          } else if (state is PaymentError) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Error: ${state.message}'),
                backgroundColor: Colors.red,
              ),
            );
          }
        },
        builder: (context, state) {
          if (state is PaymentLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is PaymentLoaded) {
            return _buildBody(state.payments);
          } else if (state is PaymentError) {
            return Center(child: Text('Error: ${state.message}'));
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => _showAddPaymentDialog(),
        icon: const Icon(Icons.add),
        label: const Text('Record Payment'),
      ),
    );
  }

  Widget _buildBody(List<PaymentModel> payments) {
    final filtered = _getFilteredPayments(payments);

    return Column(
      children: [
        _buildStatsOverview(payments),
        _buildFilters(),
        Expanded(
          child: filtered.isEmpty
              ? const Center(child: Text('No payments found'))
              : RefreshIndicator(
                  onRefresh: () async {
                    context.read<PaymentBloc>().add(
                      const PaymentEvent.fetchPayments(),
                    );
                  },
                  child: ListView.builder(
                    padding: const EdgeInsets.all(16),
                    itemCount: filtered.length,
                    itemBuilder: (context, index) =>
                        _buildPaymentCard(filtered[index]),
                  ),
                ),
        ),
      ],
    );
  }

  List<PaymentModel> _getFilteredPayments(List<PaymentModel> payments) {
    if (_selectedFilter == 'all') return payments;
    return payments.where((p) => p.status == _selectedFilter).toList();
  }

  Widget _buildStatsOverview(List<PaymentModel> payments) {
    final totalCompleted = payments
        .where((p) => p.status == 'completed')
        .fold<double>(0, (sum, p) => sum + double.parse(p.amount));

    final pendingCount = payments.where((p) => p.status == 'pending').length;

    return Container(
      padding: const EdgeInsets.all(16),
      color: Colors.blue.shade50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildStatItem(
            'Total Revenue',
            NumberFormat.simpleCurrency().format(totalCompleted),
            Colors.green,
          ),
          _buildStatItem('Pending', '$pendingCount', Colors.orange),
        ],
      ),
    );
  }

  Widget _buildStatItem(String label, String value, Color color) {
    return Column(
      children: [
        Text(label, style: const TextStyle(fontSize: 12, color: Colors.grey)),
        Text(
          value,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: color,
          ),
        ),
      ],
    );
  }

  Widget _buildFilters() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        children: [
          _buildFilterChip('all', 'All'),
          const SizedBox(width: 8),
          _buildFilterChip('completed', 'Completed'),
          const SizedBox(width: 8),
          _buildFilterChip('pending', 'Pending'),
          const SizedBox(width: 8),
          _buildFilterChip('failed', 'Failed'),
          const SizedBox(width: 8),
          _buildFilterChip('refunded', 'Refunded'),
        ],
      ),
    );
  }

  Widget _buildFilterChip(String value, String label) {
    final isSelected = _selectedFilter == value;
    return FilterChip(
      label: Text(label),
      selected: isSelected,
      onSelected: (selected) {
        if (selected) setState(() => _selectedFilter = value);
      },
    );
  }

  Widget _buildPaymentCard(PaymentModel payment) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        title: Text(
          'Payment #${payment.invoiceNumber ?? payment.id.substring(0, 8)}',
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Method: ${payment.paymentMethod.toUpperCase()}'),
            Text(
              payment.paymentDate != null
                  ? DateFormat(
                      'MMM dd, yyyy HH:mm',
                    ).format(payment.paymentDate!)
                  : 'N/A',
            ),
          ],
        ),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              NumberFormat.simpleCurrency().format(
                double.parse(payment.amount),
              ),
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            _buildStatusChip(payment.status),
          ],
        ),
      ),
    );
  }

  Widget _buildStatusChip(String status) {
    Color color;
    switch (status) {
      case 'completed':
        color = Colors.green;
      case 'pending':
        color = Colors.orange;
      case 'failed':
        color = Colors.red;
      case 'refunded':
        color = Colors.blue;
      default:
        color = Colors.grey;
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: color),
      ),
      child: Text(
        status.toUpperCase(),
        style: TextStyle(
          fontSize: 10,
          color: color,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  void _showAddPaymentDialog() {
    MemberModel? selectedMember;
    MembershipPlanModel? selectedPlan;
    DateTime startDate = DateTime.now();
    String selectedMethod = 'cash';
    final notesController = TextEditingController();
    final amountController = TextEditingController();

    showDialog(
      context: context,
      builder: (context) => StatefulBuilder(
        builder: (context, setModalState) => AlertDialog(
          title: const Text('Record New Payment'),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Member Selector
                BlocBuilder<MemberBloc, MemberState>(
                  builder: (context, state) {
                    if (state is MemberMembersLoaded) {
                      return DropdownButtonFormField<MemberModel>(
                        initialValue: selectedMember,
                        decoration: const InputDecoration(
                          labelText: 'Select Member',
                          prefixIcon: Icon(Icons.person),
                        ),
                        items: state.members.map((m) {
                          return DropdownMenuItem(
                            value: m,
                            child: Text(
                              '${m.user?.firstName} ${m.user?.lastName} (${m.membershipNumber})',
                            ),
                          );
                        }).toList(),
                        onChanged: (val) {
                          setModalState(() {
                            selectedMember = val;
                          });
                        },
                      );
                    } else if (state is MemberLoading) {
                      return const LinearProgressIndicator();
                    } else {
                      return const Text('Failed to load members');
                    }
                  },
                ),
                const SizedBox(height: 16),
                // Plan Selector
                BlocBuilder<PlansBloc, PlansState>(
                  builder: (context, state) {
                    if (state is PlansLoaded) {
                      return DropdownButtonFormField<MembershipPlanModel>(
                        initialValue: selectedPlan,
                        decoration: const InputDecoration(
                          labelText: 'Select Plan',
                          prefixIcon: Icon(Icons.card_membership),
                        ),
                        items: state.plans.map((p) {
                          return DropdownMenuItem(
                            value: p,
                            child: Text('${p.name} - \$${p.price}'),
                          );
                        }).toList(),
                        onChanged: (val) {
                          setModalState(() {
                            selectedPlan = val;
                            if (val != null) {
                              amountController.text = val.price;
                            }
                          });
                        },
                      );
                    } else if (state is PlansLoading) {
                      return const LinearProgressIndicator();
                    } else {
                      return const Text('Failed to load plans');
                    }
                  },
                ),
                const SizedBox(height: 16),
                // Amount (Pre-filled but editable)
                TextField(
                  controller: amountController,
                  decoration: const InputDecoration(
                    labelText: 'Amount (\$)',
                    prefixIcon: Icon(Icons.attach_money),
                  ),
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(height: 16),
                // Start Date
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: const Icon(Icons.calendar_today),
                  title: const Text('Start Date'),
                  subtitle: Text(DateFormat('MMM dd, yyyy').format(startDate)),
                  onTap: () async {
                    final picked = await showDatePicker(
                      context: context,
                      initialDate: startDate,
                      firstDate: DateTime.now().subtract(
                        const Duration(days: 30),
                      ),
                      lastDate: DateTime.now().add(const Duration(days: 365)),
                    );
                    if (picked != null) {
                      setModalState(() => startDate = picked);
                    }
                  },
                ),
                const SizedBox(height: 16),
                // Payment Method
                DropdownButtonFormField<String>(
                  initialValue: selectedMethod,
                  decoration: const InputDecoration(
                    labelText: 'Payment Method',
                    prefixIcon: Icon(Icons.payment),
                  ),
                  items: const [
                    DropdownMenuItem(value: 'cash', child: Text('Cash')),
                    DropdownMenuItem(value: 'upi', child: Text('UPI')),
                    DropdownMenuItem(value: 'card', child: Text('Card')),
                    DropdownMenuItem(
                      value: 'bank_transfer',
                      child: Text('Bank Transfer'),
                    ),
                  ],
                  onChanged: (val) =>
                      setModalState(() => selectedMethod = val!),
                ),
                const SizedBox(height: 16),
                TextField(
                  controller: notesController,
                  decoration: const InputDecoration(
                    labelText: 'Notes',
                    prefixIcon: Icon(Icons.note),
                  ),
                  maxLines: 2,
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
              onPressed: (selectedMember == null || selectedPlan == null)
                  ? null
                  : () {
                      context.read<PaymentBloc>().add(
                        PaymentEvent.createPayment(
                          memberId: selectedMember!.id,
                          planId: selectedPlan!.id,
                          amount: amountController.text,
                          paymentMethod: selectedMethod,
                          startDate: DateFormat('yyyy-MM-dd').format(startDate),
                          notes: notesController.text,
                          // If they have an active membership, we could pass it,
                          // but our updated backend handles memberId/planId well.
                          membershipId: selectedMember!.activeMembershipId,
                        ),
                      );
                      Navigator.pop(context);
                    },
              child: const Text('Record'),
            ),
          ],
        ),
      ),
    );
  }
}
