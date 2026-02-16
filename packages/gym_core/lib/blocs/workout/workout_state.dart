import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gym_core/models/workout_model.dart';

part 'workout_state.freezed.dart';

@freezed
class WorkoutState with _$WorkoutState {
  const factory WorkoutState.initial() = _Initial;
  const factory WorkoutState.loading() = _Loading;
  const factory WorkoutState.loaded(List<WorkoutPlanModel> plans) = _Loaded;
  const factory WorkoutState.exercisesLoaded(
    List<WorkoutExerciseModel> exercises,
  ) = _ExercisesLoaded;
  const factory WorkoutState.success(String message) = _Success;
  const factory WorkoutState.error(String message) = _Error;
}
