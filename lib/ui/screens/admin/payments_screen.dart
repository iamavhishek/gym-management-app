import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gym_management_app/core/blocs/member/member_bloc.dart';
import 'package:gym_management_app/core/blocs/member/member_event.dart';
import 'package:gym_management_app/core/blocs/member/member_state.dart';
import 'package:gym_management_app/core/blocs/payment/payment_bloc.dart';
import 'package:gym_management_app/core/blocs/payment/payment_event.dart';
import 'package:gym_management_app/core/blocs/payment/payment_state.dart';
import 'package:gym_management_app/core/blocs/plans/plans_bloc.dart';
import 'package:gym_management_app/core/blocs/plans/plans_event.dart';
import 'package:gym_management_app/core/config/routes.dart';
import 'package:gym_management_app/core/models/payment_model.dart';
import 'package:gym_management_app/ui/config/theme.dart';
import 'package:intl/intl.dart';

class PaymentsScreen extends StatefulWidget {
  final String? memberId;
  const PaymentsScreen({super.key, this.memberId});

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

    if (widget.memberId != null) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        context.push(
          AppRoutes.adminPaymentsRecord,
          extra: {'memberId': widget.memberId},
        );
      });
    }
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
        onPressed: () => context.push(AppRoutes.adminPaymentsRecord),
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
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      padding: const EdgeInsets.all(20),
      decoration: AppTheme.premiumDecoration(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildStatItem(
            'Total Revenue',
            NumberFormat.simpleCurrency().format(totalCompleted),
            const Color(0xFF10B981),
          ),
          Container(width: 1, height: 40, color: AppTheme.outlineLight),
          _buildStatItem('Pending', '$pendingCount', const Color(0xFFF59E0B)),
        ],
      ),
    );
  }

  Widget _buildStatItem(String label, String value, Color color) {
    return Column(
      children: [
        Text(
          label,
          style: GoogleFonts.inter(
            fontSize: 12,
            color: AppTheme.textSecondary,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          value,
          style: GoogleFonts.outfit(
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
      label: Text(
        label,
        style: GoogleFonts.inter(
          fontWeight: isSelected ? FontWeight.bold : FontWeight.w500,
          fontSize: 13,
        ),
      ),
      selected: isSelected,
      selectedColor: AppTheme.primaryBlue.withOpacity(0.12),
      checkmarkColor: AppTheme.primaryBlue,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(
          color: isSelected ? AppTheme.primaryBlue : AppTheme.outlineLight,
        ),
      ),
      onSelected: (selected) {
        if (selected) setState(() => _selectedFilter = value);
      },
    );
  }

  Widget _buildPaymentCard(PaymentModel payment) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: AppTheme.premiumDecoration(),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: AppTheme.primaryBlue.withOpacity(0.08),
              borderRadius: BorderRadius.circular(14),
            ),
            child: Icon(
              _getPaymentMethodIcon(payment.paymentMethod),
              color: AppTheme.primaryBlue,
              size: 22,
            ),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: BlocBuilder<MemberBloc, MemberState>(
                        builder: (context, memberState) {
                          String memberName = 'Unknown Member';
                          if (memberState is MemberMembersLoaded) {
                            final member = memberState.members.firstWhere(
                              (m) =>
                                  m.activeMembershipId == payment.membershipId,
                              orElse: () => memberState.members.firstWhere(
                                (m) => m.id == payment.memberId,
                                orElse: () => memberState.members.firstWhere(
                                  (m) => m.id == payment.membershipId,
                                  orElse: () => memberState.members.first,
                                ),
                              ),
                            );
                            memberName =
                                '${member.user?.firstName} ${member.user?.lastName}';
                          }
                          return Text(
                            memberName,
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: AppTheme.textMain,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          );
                        },
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 2),
                Text(
                  'Payment #${payment.invoiceNumber ?? payment.id.substring(0, 8)}',
                  style: GoogleFonts.inter(
                    fontSize: 11,
                    color: AppTheme.textSecondary,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  '${payment.paymentMethod.toUpperCase()} • ${payment.paymentDate != null ? DateFormat('MMM dd, yyyy').format(payment.paymentDate!) : 'N/A'}',
                  style: GoogleFonts.inter(
                    fontSize: 11,
                    color: AppTheme.textSecondary,
                  ),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    NumberFormat.simpleCurrency().format(
                      double.parse(payment.amount),
                    ),
                    style: GoogleFonts.outfit(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: AppTheme.textMain,
                    ),
                  ),
                  const SizedBox(width: 4),
                  PopupMenuButton<String>(
                    padding: EdgeInsets.zero,
                    icon: const Icon(
                      Icons.more_vert,
                      size: 20,
                      color: AppTheme.textSecondary,
                    ),
                    itemBuilder: (context) => [
                      const PopupMenuItem(
                        value: 'edit',
                        child: Row(
                          children: [
                            Icon(Icons.edit_outlined, size: 18),
                            SizedBox(width: 8),
                            Text('Edit Payment'),
                          ],
                        ),
                      ),
                      const PopupMenuItem(
                        value: 'edit_membership',
                        child: Row(
                          children: [
                            Icon(Icons.card_membership_rounded, size: 18),
                            SizedBox(width: 8),
                            Text('Edit Membership'),
                          ],
                        ),
                      ),
                      const PopupMenuItem(
                        value: 'delete',
                        child: Row(
                          children: [
                            Icon(
                              Icons.delete_outline_rounded,
                              size: 18,
                              color: Colors.red,
                            ),
                            SizedBox(width: 8),
                            Text(
                              'Delete Record',
                              style: TextStyle(color: Colors.red),
                            ),
                          ],
                        ),
                      ),
                    ],
                    onSelected: (value) {
                      if (value == 'edit') {
                        _showEditPaymentDialog(payment);
                      } else if (value == 'edit_membership') {
                        // Navigate to edit membership
                        // Try to find memberId if possible
                        final memberId = payment.memberId;
                        if (memberId != null) {
                          context.push(
                            '${AppRoutes.adminMembers}/$memberId/membership-edit',
                          );
                        } else {
                          // Try to find in loaded members if possible
                          final memberState = context.read<MemberBloc>().state;
                          if (memberState is MemberMembersLoaded) {
                            final member = memberState.members.firstWhere(
                              (m) =>
                                  m.activeMembershipId == payment.membershipId,
                              orElse: () => memberState.members.firstWhere(
                                (m) => m.id == payment.membershipId, // fallback
                                orElse: () => memberState.members.first,
                              ),
                            );
                            context.push(
                              '${AppRoutes.adminMembers}/${member.id}/membership-edit',
                            );
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text(
                                  'Could not find associated member',
                                ),
                              ),
                            );
                          }
                        }
                      } else if (value == 'delete') {
                        _showDeleteConfirmation(payment);
                      }
                    },
                  ),
                ],
              ),
              const SizedBox(height: 4),
              _buildStatusChip(payment.status),
            ],
          ),
        ],
      ),
    );
  }

  void _showDeleteConfirmation(PaymentModel payment) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Delete Payment'),
        content: Text(
          'Are you sure you want to delete payment #${payment.invoiceNumber ?? payment.id.substring(0, 8)} for रु ${payment.amount}?',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              context.read<PaymentBloc>().add(
                PaymentEvent.deletePayment(payment.id),
              );
              Navigator.pop(context);
            },
            style: TextButton.styleFrom(foregroundColor: Colors.red),
            child: const Text('Delete'),
          ),
        ],
      ),
    );
  }

  void _showEditPaymentDialog(PaymentModel payment) {
    String selectedStatus = payment.status;
    String selectedMethod = payment.paymentMethod.toLowerCase();
    final amountController = TextEditingController(text: payment.amount);
    final notesController = TextEditingController(text: payment.notes ?? '');

    showDialog(
      context: context,
      builder: (context) => StatefulBuilder(
        builder: (context, setModalState) => AlertDialog(
          title: const Text('Update Payment'),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  controller: amountController,
                  decoration: const InputDecoration(
                    labelText: 'Amount (रु)',
                    prefixIcon: Icon(Icons.attach_money),
                  ),
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(height: 16),
                DropdownButtonFormField<String>(
                  value: selectedStatus,
                  decoration: const InputDecoration(
                    labelText: 'Status',
                    prefixIcon: Icon(Icons.info_outline),
                  ),
                  items: const [
                    DropdownMenuItem(
                      value: 'completed',
                      child: Text('Completed'),
                    ),
                    DropdownMenuItem(value: 'pending', child: Text('Pending')),
                    DropdownMenuItem(value: 'failed', child: Text('Failed')),
                    DropdownMenuItem(
                      value: 'refunded',
                      child: Text('Refunded'),
                    ),
                  ],
                  onChanged: (val) =>
                      setModalState(() => selectedStatus = val!),
                ),
                const SizedBox(height: 16),
                DropdownButtonFormField<String>(
                  value: selectedMethod,
                  decoration: const InputDecoration(
                    labelText: 'Payment Method',
                    prefixIcon: Icon(Icons.payment),
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
              onPressed: () {
                context.read<PaymentBloc>().add(
                  PaymentEvent.updatePayment(
                    id: payment.id,
                    amount: amountController.text,
                    paymentMethod: selectedMethod,
                    status: selectedStatus,
                    notes: notesController.text,
                  ),
                );
                Navigator.pop(context);
              },
              child: const Text('Update'),
            ),
          ],
        ),
      ),
    );
  }

  IconData _getPaymentMethodIcon(String method) {
    switch (method.toLowerCase()) {
      case 'cash':
        return Icons.payments_outlined;
      case 'card':
        return Icons.credit_card_rounded;
      case 'qr':
        return Icons.qr_code_scanner_rounded;
      case 'bank_transfer':
        return Icons.account_balance_outlined;
      default:
        return Icons.receipt_long_outlined;
    }
  }

  Widget _buildStatusChip(String status) {
    Color color;
    switch (status) {
      case 'completed':
        color = const Color(0xFF10B981);
      case 'pending':
        color = const Color(0xFFF59E0B);
      case 'failed':
        color = const Color(0xFFEF4444);
      case 'refunded':
        color = AppTheme.primaryBlue;
      default:
        color = AppTheme.textSecondary;
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        status.toUpperCase(),
        style: GoogleFonts.inter(
          fontSize: 10,
          color: color,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
