import 'dart:developer' as developer;

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gym_management_app/core/blocs/trainer/trainer_event.dart';
import 'package:gym_management_app/core/blocs/trainer/trainer_state.dart';
import 'package:gym_management_app/core/repositories/trainer_repository.dart';

class TrainerBloc extends Bloc<TrainerEvent, TrainerState> {
  final TrainerRepository _trainerRepository;

  TrainerBloc(this._trainerRepository) : super(const TrainerState.initial()) {
    on<TrainerEvent>((event, emit) async {
      await event.when(
        fetchTrainers: () async {
          emit(const TrainerState.loading());
          try {
            final trainers = await _trainerRepository.getTrainers();
            emit(TrainerState.loaded(trainers));
          } catch (e, s) {
            developer.log('Error in TrainerBloc', error: e, stackTrace: s);
            emit(TrainerState.error(e.toString()));
          }
        },
        fetchTrainerDetails: (id) async {
          emit(const TrainerState.loading());
          try {
            final trainer = await _trainerRepository.getTrainerById(id);
            emit(TrainerState.trainerLoaded(trainer));
          } catch (e) {
            emit(TrainerState.error(e.toString()));
          }
        },
        createTrainer: (data) async {
          emit(const TrainerState.loading());
          try {
            await _trainerRepository.createTrainer(data);
            emit(const TrainerState.success('Trainer created successfully'));
            add(const TrainerEvent.fetchTrainers());
          } catch (e) {
            emit(TrainerState.error(e.toString()));
          }
        },
        updateTrainer: (id, data) async {
          emit(const TrainerState.loading());
          try {
            await _trainerRepository.updateTrainer(id, data);
            emit(const TrainerState.success('Trainer updated successfully'));
            add(const TrainerEvent.fetchTrainers());
          } catch (e) {
            emit(TrainerState.error(e.toString()));
          }
        },
        fetchDashboard: () async {
          emit(const TrainerState.loading());
          try {
            final data = await _trainerRepository.getDashboardData();
            emit(TrainerState.dashboardLoaded(data));
          } catch (e) {
            emit(TrainerState.error(e.toString()));
          }
        },
      );
    });
  }
}
