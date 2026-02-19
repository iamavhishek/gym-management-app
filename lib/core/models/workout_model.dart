import 'package:freezed_annotation/freezed_annotation.dart';

part 'workout_model.freezed.dart';
part 'workout_model.g.dart';

@freezed
abstract class WorkoutExerciseModel with _$WorkoutExerciseModel {
  const factory WorkoutExerciseModel({
    required String id,
    required String name,
    String? category,
    String? muscleGroup,
    String? description,
    String? imageUrl,
    String? videoUrl,
    String? equipmentRequired,
    String? difficultyLevel,
    String? instructions,
    int? caloriesBurned,
  }) = _WorkoutExerciseModel;

  factory WorkoutExerciseModel.fromJson(Map<String, dynamic> json) =>
      _$WorkoutExerciseModelFromJson(json);
}

@freezed
abstract class WorkoutPlanModel with _$WorkoutPlanModel {
  const factory WorkoutPlanModel({
    required String id,
    required String name,
    @Default('') String description,
    String? trainerId,
    String? memberId,
    String? startDate, // Backend returns date as string
    String? endDate, // Backend returns date as string
    @Default(false) bool isTemplate,
    @Default(true) bool isActive,
    @Default([]) List<WorkoutSessionModel> sessions,
    Map<String, dynamic>? member,
    Map<String, dynamic>? trainer,
  }) = _WorkoutPlanModel;

  factory WorkoutPlanModel.fromJson(Map<String, dynamic> json) =>
      _$WorkoutPlanModelFromJson(json);
}

@freezed
abstract class WorkoutSessionModel with _$WorkoutSessionModel {
  const factory WorkoutSessionModel({
    required String id,
    String? exerciseId,
    String? workoutPlanId,
    WorkoutExerciseModel? exercise,
    @Default(1) int dayOfWeek, // 1-7 (Mon-Sun)
    @Default(0) int order,
    int? sets,
    int? reps,
    int? duration, // Seconds/Minutes
    String? weight, // Backend stores as varchar (e.g., '10kg', 'bw')
    String? notes,
  }) = _WorkoutSessionModel;

  factory WorkoutSessionModel.fromJson(Map<String, dynamic> json) =>
      _$WorkoutSessionModelFromJson(json);
}

@freezed
abstract class WorkoutLogModel with _$WorkoutLogModel {
  const factory WorkoutLogModel({
    required String id,
    required String memberId,
    required String exerciseId,
    required String sessionDate, // Backend returns date as string
    int? setsCompleted,
    int? repsCompleted,
    String? weightUsed, // Backend stores as varchar
    int? duration,
    int? caloriesBurned,
    int? rating,
    int? difficulty,
    String? notes,
  }) = _WorkoutLogModel;

  factory WorkoutLogModel.fromJson(Map<String, dynamic> json) =>
      _$WorkoutLogModelFromJson(json);
}
