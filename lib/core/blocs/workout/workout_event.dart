import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gym_management_app/core/models/workout_model.dart';

part 'workout_event.freezed.dart';

@freezed
class WorkoutEvent with _$WorkoutEvent {
  const factory WorkoutEvent.fetchPlans({
    String? memberId,
    String? trainerId,
    String? userId,
    @Default(false) bool isTemplate,
  }) = _FetchPlans;
  const factory WorkoutEvent.logWorkout(WorkoutLogModel log) = _LogWorkout;
  const factory WorkoutEvent.createPlan(WorkoutPlanModel plan) = _CreatePlan;
  const factory WorkoutEvent.fetchExercises() = _FetchExercises;
  const factory WorkoutEvent.deletePlan(String planId) = _DeletePlan;
  const factory WorkoutEvent.updatePlan(WorkoutPlanModel plan) = _UpdatePlan;
}
