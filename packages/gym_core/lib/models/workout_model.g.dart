// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workout_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WorkoutExerciseModel _$WorkoutExerciseModelFromJson(
  Map<String, dynamic> json,
) => _WorkoutExerciseModel(
  id: json['id'] as String,
  name: json['name'] as String,
  category: json['category'] as String?,
  muscleGroup: json['muscleGroup'] as String?,
  description: json['description'] as String?,
  imageUrl: json['imageUrl'] as String?,
  videoUrl: json['videoUrl'] as String?,
  equipmentRequired: json['equipmentRequired'] as String?,
  difficultyLevel: json['difficultyLevel'] as String?,
  instructions: json['instructions'] as String?,
  caloriesBurned: (json['caloriesBurned'] as num?)?.toInt(),
);

Map<String, dynamic> _$WorkoutExerciseModelToJson(
  _WorkoutExerciseModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'category': instance.category,
  'muscleGroup': instance.muscleGroup,
  'description': instance.description,
  'imageUrl': instance.imageUrl,
  'videoUrl': instance.videoUrl,
  'equipmentRequired': instance.equipmentRequired,
  'difficultyLevel': instance.difficultyLevel,
  'instructions': instance.instructions,
  'caloriesBurned': instance.caloriesBurned,
};

_WorkoutPlanModel _$WorkoutPlanModelFromJson(Map<String, dynamic> json) =>
    _WorkoutPlanModel(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String? ?? '',
      trainerId: json['trainerId'] as String?,
      memberId: json['memberId'] as String?,
      startDate: json['startDate'] as String?,
      endDate: json['endDate'] as String?,
      isTemplate: json['isTemplate'] as bool? ?? false,
      isActive: json['isActive'] as bool? ?? true,
      sessions:
          (json['sessions'] as List<dynamic>?)
              ?.map(
                (e) => WorkoutSessionModel.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          const [],
      member: json['member'] as Map<String, dynamic>?,
      trainer: json['trainer'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$WorkoutPlanModelToJson(_WorkoutPlanModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'trainerId': instance.trainerId,
      'memberId': instance.memberId,
      'startDate': instance.startDate,
      'endDate': instance.endDate,
      'isTemplate': instance.isTemplate,
      'isActive': instance.isActive,
      'sessions': instance.sessions,
      'member': instance.member,
      'trainer': instance.trainer,
    };

_WorkoutSessionModel _$WorkoutSessionModelFromJson(Map<String, dynamic> json) =>
    _WorkoutSessionModel(
      id: json['id'] as String,
      exerciseId: json['exerciseId'] as String?,
      workoutPlanId: json['workoutPlanId'] as String?,
      exercise: json['exercise'] == null
          ? null
          : WorkoutExerciseModel.fromJson(
              json['exercise'] as Map<String, dynamic>,
            ),
      dayOfWeek: (json['dayOfWeek'] as num?)?.toInt() ?? 1,
      order: (json['order'] as num?)?.toInt() ?? 0,
      sets: (json['sets'] as num?)?.toInt(),
      reps: (json['reps'] as num?)?.toInt(),
      duration: (json['duration'] as num?)?.toInt(),
      weight: json['weight'] as String?,
      notes: json['notes'] as String?,
    );

Map<String, dynamic> _$WorkoutSessionModelToJson(
  _WorkoutSessionModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'exerciseId': instance.exerciseId,
  'workoutPlanId': instance.workoutPlanId,
  'exercise': instance.exercise,
  'dayOfWeek': instance.dayOfWeek,
  'order': instance.order,
  'sets': instance.sets,
  'reps': instance.reps,
  'duration': instance.duration,
  'weight': instance.weight,
  'notes': instance.notes,
};

_WorkoutLogModel _$WorkoutLogModelFromJson(Map<String, dynamic> json) =>
    _WorkoutLogModel(
      id: json['id'] as String,
      memberId: json['memberId'] as String,
      exerciseId: json['exerciseId'] as String,
      sessionDate: json['sessionDate'] as String,
      setsCompleted: (json['setsCompleted'] as num?)?.toInt(),
      repsCompleted: (json['repsCompleted'] as num?)?.toInt(),
      weightUsed: json['weightUsed'] as String?,
      duration: (json['duration'] as num?)?.toInt(),
      caloriesBurned: (json['caloriesBurned'] as num?)?.toInt(),
      rating: (json['rating'] as num?)?.toInt(),
      difficulty: (json['difficulty'] as num?)?.toInt(),
      notes: json['notes'] as String?,
    );

Map<String, dynamic> _$WorkoutLogModelToJson(_WorkoutLogModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'memberId': instance.memberId,
      'exerciseId': instance.exerciseId,
      'sessionDate': instance.sessionDate,
      'setsCompleted': instance.setsCompleted,
      'repsCompleted': instance.repsCompleted,
      'weightUsed': instance.weightUsed,
      'duration': instance.duration,
      'caloriesBurned': instance.caloriesBurned,
      'rating': instance.rating,
      'difficulty': instance.difficulty,
      'notes': instance.notes,
    };
