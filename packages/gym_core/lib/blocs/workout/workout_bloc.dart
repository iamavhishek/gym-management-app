import 'dart:developer' as developer;

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gym_core/blocs/workout/workout_event.dart';
import 'package:gym_core/blocs/workout/workout_state.dart';
import 'package:gym_core/repositories/workout_repository.dart';

class WorkoutBloc extends Bloc<WorkoutEvent, WorkoutState> {
  final WorkoutRepository _workoutRepository;

  WorkoutBloc(this._workoutRepository) : super(const WorkoutState.initial()) {
    on<WorkoutEvent>((event, emit) async {
      await event.when(
        fetchPlans: (memberId, trainerId, userId, isTemplate) async {
          emit(const WorkoutState.loading());
          try {
            final plans = await _workoutRepository.getWorkoutPlans(
              memberId: memberId,
              trainerId: trainerId,
              userId: userId,
              isTemplate: isTemplate,
            );
            emit(WorkoutState.loaded(plans));
          } catch (e) {
            emit(WorkoutState.error(e.toString()));
          }
        },
        logWorkout: (log) async {
          emit(const WorkoutState.loading());
          try {
            await _workoutRepository.logWorkout(log);
            emit(const WorkoutState.success('Workout logged successfully'));
          } catch (e) {
            emit(WorkoutState.error(e.toString()));
          }
        },
        createPlan: (plan) async {
          emit(const WorkoutState.loading());
          try {
            await _workoutRepository.createWorkoutPlan(plan);
            emit(
              const WorkoutState.success('Workout plan created successfully'),
            );
            add(WorkoutEvent.fetchPlans(memberId: plan.memberId));
          } catch (e) {
            emit(WorkoutState.error(e.toString()));
          }
        },
        fetchExercises: () async {
          emit(const WorkoutState.loading());
          try {
            final exercises = await _workoutRepository.getExercises();
            emit(WorkoutState.exercisesLoaded(exercises));
          } catch (e, s) {
            developer.log('Error in WorkoutBloc', error: e, stackTrace: s);
            emit(WorkoutState.error(e.toString()));
          }
        },
        deletePlan: (planId) async {
          emit(const WorkoutState.loading());
          try {
            await _workoutRepository.deleteWorkoutPlan(planId);
            emit(
              const WorkoutState.success('Workout plan deleted successfully'),
            );
          } catch (e) {
            emit(WorkoutState.error(e.toString()));
          }
        },
        updatePlan: (plan) async {
          emit(const WorkoutState.loading());
          try {
            await _workoutRepository.updateWorkoutPlan(plan);
            emit(
              const WorkoutState.success('Workout plan updated successfully'),
            );
          } catch (e) {
            emit(WorkoutState.error(e.toString()));
          }
        },
      );
    });
  }
}
