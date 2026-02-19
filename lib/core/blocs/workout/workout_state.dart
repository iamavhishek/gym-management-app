import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gym_management_app/core/models/workout_model.dart';

part 'workout_state.freezed.dart';

@freezed
class WorkoutState with _$WorkoutState {
  const factory WorkoutState.initial() = WorkoutInitial;
  const factory WorkoutState.loading() = WorkoutLoading;
  const factory WorkoutState.loaded(List<WorkoutPlanModel> plans) =
      WorkoutLoaded;
  const factory WorkoutState.exercisesLoaded(
    List<WorkoutExerciseModel> exercises,
  ) = WorkoutExercisesLoaded;
  const factory WorkoutState.success(String message) = WorkoutSuccess;
  const factory WorkoutState.error(String message) = WorkoutError;
}
