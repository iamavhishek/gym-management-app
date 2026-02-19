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

class TrainersScreen extends StatefulWidget {
  const TrainersScreen({super.key});

  @override
  State<TrainersScreen> createState() => _TrainersScreenState();
}

class _TrainersScreenState extends State<TrainersScreen> {
  @override
  void initState() {
    super.initState();
    context.read<TrainerBloc>().add(const TrainerEvent.fetchTrainers());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Trainers')),
      body: BlocBuilder<TrainerBloc, TrainerState>(
        builder: (context, state) {
          if (state is TrainerLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is TrainerLoaded) {
            return _buildTrainersList(state.trainers);
          } else if (state is TrainerError) {
            return Center(child: Text('Error: ${state.message}'));
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.push(AppRoutes.adminTrainersAdd),
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget _buildTrainersList(List<TrainerModel> trainers) {
    if (trainers.isEmpty) {
      return const Center(child: Text('No trainers found'));
    }

    return RefreshIndicator(
      onRefresh: () async {
        context.read<TrainerBloc>().add(const TrainerEvent.fetchTrainers());
      },
      child: ListView.builder(
        itemCount: trainers.length,
        itemBuilder: (context, index) => _buildTrainerCard(trainers[index]),
      ),
    );
  }

  Widget _buildTrainerCard(TrainerModel trainer) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      padding: const EdgeInsets.all(14),
      decoration: AppTheme.premiumDecoration(),
      child: InkWell(
        onTap: () => context.push(
          '${AppRoutes.adminTrainers}/${trainer.id}',
        ),
        borderRadius: BorderRadius.circular(28),
        child: Row(
          children: [
            CircleAvatar(
              radius: 24,
              backgroundColor: AppTheme.primaryBlue.withOpacity(0.1),
              backgroundImage:
                  (trainer.profileImage != null &&
                      trainer.profileImage!.isNotEmpty)
                  ? NetworkImage(trainer.profileImage!)
                  : null,
              child:
                  (trainer.profileImage == null ||
                      trainer.profileImage!.isEmpty)
                  ? Text(
                      trainer.firstName[0],
                      style: GoogleFonts.outfit(
                        fontWeight: FontWeight.bold,
                        color: AppTheme.primaryBlue,
                        fontSize: 18,
                      ),
                    )
                  : null,
            ),
            const SizedBox(width: 14),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${trainer.firstName} ${trainer.lastName}',
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                      color: AppTheme.textMain,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    trainer.specialization,
                    style: GoogleFonts.inter(
                      fontSize: 13,
                      color: AppTheme.textSecondary,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      const Icon(
                        Icons.star_rounded,
                        size: 16,
                        color: Color(0xFFF59E0B),
                      ),
                      Text(
                        ' ${trainer.rating ?? 'N/A'}',
                        style: GoogleFonts.inter(
                          fontSize: 12,
                          color: AppTheme.textSecondary,
                        ),
                      ),
                      const SizedBox(width: 16),
                      const Icon(
                        Icons.people_outline_rounded,
                        size: 16,
                        color: AppTheme.textSecondary,
                      ),
                      Text(
                        ' ${trainer.activeClientsCount} clients',
                        style: GoogleFonts.inter(
                          fontSize: 12,
                          color: AppTheme.textSecondary,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Icon(
              Icons.chevron_right_rounded,
              color: AppTheme.textSecondary,
            ),
          ],
        ),
      ),
    );
  }
}
