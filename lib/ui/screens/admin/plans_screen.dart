import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gym_management_app/core/blocs/plans/plans_bloc.dart';
import 'package:gym_management_app/core/blocs/plans/plans_event.dart';
import 'package:gym_management_app/core/blocs/plans/plans_state.dart';
import 'package:gym_management_app/core/config/constants.dart';
import 'package:gym_management_app/core/models/payment_model.dart';
import 'package:gym_management_app/ui/config/theme.dart';

class PlansScreen extends StatefulWidget {
  const PlansScreen({super.key});

  @override
  State<PlansScreen> createState() => _PlansScreenState();
}

class _PlansScreenState extends State<PlansScreen> {
  @override
  void initState() {
    super.initState();
    context.read<PlansBloc>().add(const PlansEvent.started());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Membership Plans')),
      body: BlocConsumer<PlansBloc, PlansState>(
        listener: (context, state) {
          if (state is PlansError) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Error: ${state.message}'),
                backgroundColor: Colors.red,
              ),
            );
          }
        },
        builder: (context, state) {
          if (state is PlansInitial || state is PlansLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is PlansError) {
            return Center(child: Text('Error: ${state.message}'));
          } else if (state is PlansLoaded) {
            return RefreshIndicator(
              onRefresh: () async {
                context.read<PlansBloc>().add(const PlansEvent.started());
              },
              child: state.plans.isEmpty
                  ? _buildEmptyState()
                  : ListView.builder(
                      padding: const EdgeInsets.all(16),
                      itemCount: state.plans.length,
                      itemBuilder: (context, index) =>
                          _buildPlanCard(state.plans[index]),
                    ),
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => _showPlanDialog(),
        icon: const Icon(Icons.add),
        label: const Text('Add Plan'),
      ),
    );
  }

  Widget _buildEmptyState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.card_membership_rounded,
            size: 80,
            color: AppTheme.textSecondary.withOpacity(0.4),
          ),
          const SizedBox(height: 16),
          Text(
            'No membership plans found',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 8),
          Text(
            'Create a plan to start adding members',
            style: GoogleFonts.inter(
              color: AppTheme.textSecondary,
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () => _showPlanDialog(),
            child: const Text('Create First Plan'),
          ),
        ],
      ),
    );
  }

  Widget _buildPlanCard(MembershipPlanModel plan) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(20),
      decoration: AppTheme.premiumDecoration(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  plan.name,
                  style: GoogleFonts.outfit(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: AppTheme.primaryDark,
                  ),
                ),
              ),
              Row(
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.edit_outlined,
                      color: AppTheme.primaryBlue,
                      size: 20,
                    ),
                    onPressed: () => _showPlanDialog(plan: plan),
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.delete_outline_rounded,
                      color: Color(0xFFEF4444),
                      size: 20,
                    ),
                    onPressed: () => _confirmDelete(plan),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 8),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
            decoration: BoxDecoration(
              color: plan.isActive
                  ? const Color(0xFF10B981).withOpacity(0.1)
                  : const Color(0xFFEF4444).withOpacity(0.1),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              plan.isActive ? 'ACTIVE' : 'INACTIVE',
              style: GoogleFonts.inter(
                color: plan.isActive
                    ? const Color(0xFF10B981)
                    : const Color(0xFFEF4444),
                fontSize: 11,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            plan.description,
            style: GoogleFonts.inter(
              color: AppTheme.textSecondary,
              fontSize: 13,
            ),
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              _buildInfoChip(
                Icons.payments_outlined,
                '${AppConstants.currencySymbol} ${plan.price}',
              ),
              const SizedBox(width: 8),
              _buildInfoChip(Icons.timer_outlined, '${plan.duration} Days'),
              const SizedBox(width: 8),
              _buildInfoChip(
                Icons.category_outlined,
                (plan.type ?? '').toUpperCase(),
              ),
            ],
          ),
          if (plan.features.isNotEmpty) ...[
            const SizedBox(height: 16),
            Text(
              'Features:',
              style: GoogleFonts.inter(
                fontWeight: FontWeight.w600,
                fontSize: 13,
                color: AppTheme.textMain,
              ),
            ),
            const SizedBox(height: 6),
            ...plan.features.map(
              (f) => Padding(
                padding: const EdgeInsets.only(bottom: 4),
                child: Row(
                  children: [
                    const Icon(
                      Icons.check_circle_rounded,
                      size: 16,
                      color: Color(0xFF10B981),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      f,
                      style: GoogleFonts.inter(
                        fontSize: 13,
                        color: AppTheme.textMain,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildInfoChip(IconData icon, String label) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        color: AppTheme.primaryBlue.withOpacity(0.06),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Icon(icon, size: 14, color: AppTheme.primaryBlue),
          const SizedBox(width: 4),
          Text(
            label,
            style: GoogleFonts.inter(
              color: AppTheme.primaryBlue,
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }

  void _showPlanDialog({MembershipPlanModel? plan}) {
    final nameController = TextEditingController(text: plan?.name);
    final descController = TextEditingController(text: plan?.description);
    final priceController = TextEditingController(text: plan?.price);
    final durationController = TextEditingController(
      text: plan?.duration.toString(),
    );
    String selectedType = plan?.type ?? 'regular';
    bool isActive = plan?.isActive ?? true;
    final List<String> features = plan?.features.toList() ?? [];
    final featureController = TextEditingController();

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
                  plan == null
                      ? 'Create Membership Plan'
                      : 'Edit Membership Plan',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: nameController,
                  decoration: const InputDecoration(
                    labelText: 'Plan Name',
                    prefixIcon: Icon(Icons.badge),
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
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        controller: priceController,
                        decoration: const InputDecoration(
                          labelText: 'Price (${AppConstants.currencySymbol})',
                          prefixIcon: Icon(Icons.money),
                        ),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: TextFormField(
                        controller: durationController,
                        decoration: const InputDecoration(
                          labelText: 'Duration (Days)',
                          prefixIcon: Icon(Icons.calendar_today),
                        ),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                DropdownButtonFormField<String>(
                  initialValue: selectedType,
                  decoration: const InputDecoration(
                    labelText: 'Plan Type',
                    prefixIcon: Icon(Icons.category),
                  ),
                  items: const [
                    DropdownMenuItem(value: 'regular', child: Text('Regular')),
                    DropdownMenuItem(value: 'premium', child: Text('Premium')),
                    DropdownMenuItem(value: 'trial', child: Text('Trial')),
                  ],
                  onChanged: (value) =>
                      setModalState(() => selectedType = value!),
                ),
                const SizedBox(height: 16),
                SwitchListTile(
                  title: const Text('Is Active'),
                  value: isActive,
                  onChanged: (val) => setModalState(() => isActive = val),
                  contentPadding: EdgeInsets.zero,
                ),
                const SizedBox(height: 16),
                const Text(
                  'Features',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        controller: featureController,
                        decoration: const InputDecoration(
                          hintText: 'Add a feature',
                        ),
                      ),
                    ),
                    IconButton(
                      icon: const Icon(
                        Icons.add_circle_rounded,
                        color: AppTheme.primaryBlue,
                      ),
                      onPressed: () {
                        if (featureController.text.isNotEmpty) {
                          setModalState(() {
                            features.add(featureController.text);
                            featureController.clear();
                          });
                        }
                      },
                    ),
                  ],
                ),
                Wrap(
                  spacing: 8,
                  children: features
                      .map(
                        (f) => Chip(
                          label: Text(f),
                          onDeleted: () =>
                              setModalState(() => features.remove(f)),
                        ),
                      )
                      .toList(),
                ),
                const SizedBox(height: 24),
                ElevatedButton(
                  onPressed: () {
                    if (nameController.text.isNotEmpty &&
                        priceController.text.isNotEmpty &&
                        durationController.text.isNotEmpty) {
                      Navigator.pop(context);
                      if (plan == null) {
                        context.read<PlansBloc>().add(
                          PlansEvent.createPlan(
                            name: nameController.text,
                            description: descController.text,
                            price: priceController.text,
                            duration: int.parse(durationController.text),
                            type: selectedType,
                            isActive: isActive,
                            features: features,
                          ),
                        );
                      } else {
                        context.read<PlansBloc>().add(
                          PlansEvent.updatePlan(
                            id: plan.id,
                            name: nameController.text,
                            description: descController.text,
                            price: priceController.text,
                            duration: int.parse(durationController.text),
                            type: selectedType,
                            isActive: isActive,
                            features: features,
                          ),
                        );
                      }
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                  ),
                  child: Text(plan == null ? 'Save Plan' : 'Update Plan'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _confirmDelete(MembershipPlanModel plan) async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Delete Plan'),
        content: Text('Are you sure you want to delete "${plan.name}"?'),
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
      context.read<PlansBloc>().add(PlansEvent.deletePlan(plan.id));
    }
  }
}
