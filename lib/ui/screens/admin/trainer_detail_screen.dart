import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gym_management_app/core/blocs/trainer/trainer_bloc.dart';
import 'package:gym_management_app/core/blocs/trainer/trainer_event.dart';
import 'package:gym_management_app/core/blocs/trainer/trainer_state.dart';
import 'package:gym_management_app/core/config/routes.dart';
import 'package:gym_management_app/core/models/trainer_model.dart';
import 'package:gym_management_app/ui/config/theme.dart';

class TrainerDetailScreen extends StatefulWidget {
  final String trainerId;

  const TrainerDetailScreen({super.key, required this.trainerId});

  @override
  State<TrainerDetailScreen> createState() => _TrainerDetailScreenState();
}

class _TrainerDetailScreenState extends State<TrainerDetailScreen> {
  @override
  void initState() {
    super.initState();
    context.read<TrainerBloc>().add(
      TrainerEvent.fetchTrainerDetails(widget.trainerId),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Trainer Details'),
        actions: [
          IconButton(
            icon: const Icon(Icons.edit),
            onPressed: () {
              context.push(
                '${AppRoutes.adminTrainers}/${widget.trainerId}/edit',
              );
            },
          ),
        ],
      ),
      body: BlocBuilder<TrainerBloc, TrainerState>(
        builder: (context, state) {
          if (state is TrainerLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is TrainerDetailLoaded) {
            return _buildDetailView(state.trainer);
          } else if (state is TrainerError) {
            return Center(child: Text('Error: ${state.message}'));
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }

  Widget _buildDetailView(TrainerModel trainer) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildHeader(trainer),
          const SizedBox(height: 24),
          _buildSectionTitle('Professional Info'),
          _buildInfoRow('Specialization', trainer.specialization),
          _buildInfoRow('Experience', '${trainer.experience ?? 0} years'),
          _buildInfoRow('Hourly Rate', '\$${trainer.hourlyRate ?? "0.00"}'),
          _buildInfoRow('Rating', '${trainer.rating ?? "0.0"} ⭐'),
          _buildInfoRow('Active Clients', '${trainer.activeClientsCount}'),
          const SizedBox(height: 24),
          _buildSectionTitle('Personal Info'),
          _buildInfoRow('Email', trainer.email),
          _buildInfoRow('Phone', trainer.phone),
          _buildInfoRow('Hired Date', trainer.hiredDate ?? 'N/A'),
          if (trainer.certifications != null &&
              trainer.certifications!.isNotEmpty) ...[
            const SizedBox(height: 24),
            _buildSectionTitle('Certifications'),
            Text(trainer.certifications!),
          ],
          if (trainer.bio.isNotEmpty) ...[
            const SizedBox(height: 24),
            _buildSectionTitle('Bio'),
            Text(trainer.bio),
          ],
        ],
      ),
    );
  }

  Widget _buildHeader(TrainerModel trainer) {
    return Center(
      child: Column(
        children: [
          CircleAvatar(
            radius: 50,
            backgroundColor: AppTheme.primaryBlue.withOpacity(0.1),
            backgroundImage: trainer.profileImage != null
                ? NetworkImage(trainer.profileImage!)
                : null,
            child: trainer.profileImage == null
                ? Text(
                    trainer.firstName[0],
                    style: GoogleFonts.outfit(
                      fontSize: 40,
                      color: AppTheme.primaryBlue,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                : null,
          ),
          const SizedBox(height: 16),
          Text(
            '${trainer.firstName} ${trainer.lastName}',
            style: GoogleFonts.outfit(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: AppTheme.primaryDark,
            ),
          ),
          Text(
            trainer.specialization,
            style: GoogleFonts.inter(
              color: AppTheme.textSecondary,
              fontSize: 16,
            ),
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
        style: GoogleFonts.outfit(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: AppTheme.primaryBlue,
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
              style: GoogleFonts.inter(
                fontWeight: FontWeight.w500,
                color: AppTheme.textSecondary,
              ),
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: GoogleFonts.inter(fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }
}
