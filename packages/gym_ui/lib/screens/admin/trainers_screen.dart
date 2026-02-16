import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:gym_core/blocs/trainer/trainer_bloc.dart';
import 'package:gym_core/blocs/trainer/trainer_event.dart';
import 'package:gym_core/blocs/trainer/trainer_state.dart';
import 'package:gym_core/config/routes.dart';
import 'package:gym_core/models/trainer_model.dart';

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
          return state.maybeWhen(
            loading: () => const Center(child: CircularProgressIndicator()),
            loaded: (trainers) => _buildTrainersList(trainers),
            error: (message) => Center(child: Text('Error: $message')),
            orElse: () => const Center(child: CircularProgressIndicator()),
          );
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
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage:
              (trainer.profileImage != null && trainer.profileImage!.isNotEmpty)
              ? NetworkImage(trainer.profileImage!)
              : null,
          child: (trainer.profileImage == null || trainer.profileImage!.isEmpty)
              ? Text(trainer.firstName[0])
              : null,
        ),
        title: Text('${trainer.firstName} ${trainer.lastName}'),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(trainer.specialization),
            Row(
              children: [
                const Icon(Icons.star, size: 16, color: Colors.amber),
                Text(' ${trainer.rating ?? 'N/A'}'),
                const SizedBox(width: 16),
                const Icon(Icons.people, size: 16),
                Text(' ${trainer.activeClientsCount} clients'),
              ],
            ),
          ],
        ),
        onTap: () => context.push(
          '${AppRoutes.adminTrainers}/${trainer.id}',
        ),
      ),
    );
  }
}
