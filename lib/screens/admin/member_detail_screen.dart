import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gym_management_app/blocs/auth/auth_bloc.dart';
import 'package:gym_management_app/blocs/auth/auth_state.dart';
import 'package:gym_management_app/blocs/member/member_bloc.dart';
import 'package:gym_management_app/blocs/member/member_event.dart';
import 'package:gym_management_app/blocs/member/member_state.dart';
import 'package:gym_management_app/config/routes.dart';
import 'package:gym_management_app/models/member_model.dart';
import 'package:gym_management_app/screens/member/workout_plan_screen.dart';

class MemberDetailScreen extends StatefulWidget {
  final String memberId;

  const MemberDetailScreen({super.key, required this.memberId});

  @override
  State<MemberDetailScreen> createState() => _MemberDetailScreenState();
}

class _MemberDetailScreenState extends State<MemberDetailScreen> {
  @override
  void initState() {
    super.initState();
    context.read<MemberBloc>().add(
      MemberEvent.fetchMemberDetails(widget.memberId),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Member Details'),
        actions: [
          IconButton(
            icon: const Icon(Icons.fitness_center),
            tooltip: 'View Workout Plan',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => WorkoutPlanScreen(memberId: widget.memberId),
                ),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.edit),
            onPressed: () {
              // Navigate to edit screen
              Navigator.pushNamed(
                context,
                '${AppRoutes.adminMembers}/${widget.memberId}/edit',
              );
            },
          ),
        ],
      ),
      body: BlocBuilder<MemberBloc, MemberState>(
        builder: (context, state) {
          return state.maybeWhen(
            loading: () => const Center(child: CircularProgressIndicator()),
            memberDetailLoaded: (member) => _buildDetailView(member),
            error: (message) => Center(child: Text('Error: $message')),
            orElse: () => const Center(child: CircularProgressIndicator()),
          );
        },
      ),
    );
  }

  Widget _buildDetailView(MemberModel member) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildHeader(member),
          const SizedBox(height: 24),
          _buildSectionTitle('Membership Info'),
          _buildInfoRow('Membership No', member.membershipNumber),
          _buildInfoRow('Plan', member.planName ?? 'N/A'),
          _buildInfoRow('Status', member.status?.toUpperCase() ?? 'N/A'),
          _buildInfoRow('Joined Date', member.joinedDate ?? 'N/A'),
          _buildInfoRow('Expires On', member.expiryDate ?? 'N/A'),
          const SizedBox(height: 24),
          _buildSectionTitle('Personal Info'),
          _buildInfoRow('Email', member.user?.email ?? 'N/A'),
          _buildInfoRow('Phone', member.user?.phone ?? 'N/A'),
          _buildInfoRow('Gender', member.user?.gender ?? 'N/A'),
          _buildInfoRow('DOB', member.user?.dateOfBirth ?? 'N/A'),
          _buildInfoRow('Address', member.user?.address ?? 'N/A'),
          const SizedBox(height: 24),
          _buildSectionTitle('Physical Stats'),
          _buildInfoRow('Height', '${member.height ?? '-'} cm'),
          _buildInfoRow('Weight', '${member.weight ?? '-'} kg'),
          _buildInfoRow('BMI', member.bmi ?? '-'),
          _buildInfoRow('Blood Group', member.user?.bloodGroup ?? '-'),
          const SizedBox(height: 24),
          _buildSectionTitle('Emergency Contact'),
          _buildInfoRow('Name', member.user?.emergencyContactName ?? 'N/A'),
          _buildInfoRow('Phone', member.user?.emergencyContactPhone ?? 'N/A'),
          const SizedBox(height: 32),
          BlocBuilder<AuthBloc, AuthState>(
            builder: (context, state) {
              final isTrainer = state.maybeWhen(
                authenticated: (user) => user.role == 'trainer',
                orElse: () => false,
              );
              if (!isTrainer) return const SizedBox.shrink();
              return ElevatedButton.icon(
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    '${AppRoutes.trainerWorkoutsAdd}/${member.id}',
                  );
                },
                icon: const Icon(Icons.add_task),
                label: const Text('Assign Workout Plan'),
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50),
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildHeader(MemberModel member) {
    return Center(
      child: Column(
        children: [
          CircleAvatar(
            radius: 50,
            backgroundColor: Colors.blue.shade100,
            backgroundImage: member.user?.profileImage != null
                ? NetworkImage(member.user!.profileImage!)
                : null,
            child: member.user?.profileImage == null
                ? Text(
                    member.user?.firstName[0] ?? 'M',
                    style: const TextStyle(fontSize: 40, color: Colors.blue),
                  )
                : null,
          ),
          const SizedBox(height: 16),
          Text(
            '${member.user?.firstName} ${member.user?.lastName}',
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Text(
            member.user?.email ?? '',
            style: const TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.blue,
        ),
      ),
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 120,
            child: Text(
              label,
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.grey,
              ),
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: const TextStyle(fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }
}
