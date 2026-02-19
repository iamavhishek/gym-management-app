import 'package:freezed_annotation/freezed_annotation.dart';

part 'trainer_model.freezed.dart';
part 'trainer_model.g.dart';

@freezed
abstract class TrainerModel with _$TrainerModel {
  const factory TrainerModel({
    required String id,
    String? userId,
    required String firstName,
    required String lastName,
    required String email,
    required String specialization,
    @Default('') String bio,
    @Default('') String phone,
    String? profileImage,
    String? employeeId,
    int? experience,
    String? hourlyRate,
    bool? isAvailable,
    String? hiredDate,
    int? totalSessions,
    int? maxClients,
    String? certifications,
    @Default([]) List<String> certificates,
    @Default(0) @JsonKey(name: 'currentClients') int activeClientsCount,
    String? rating,
  }) = _TrainerModel;

  factory TrainerModel.fromJson(Map<String, dynamic> json) =>
      _$TrainerModelFromJson(json);
}
