import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gym_management_app/core/models/trainer_model.dart';

part 'trainer_state.freezed.dart';

@freezed
class TrainerState with _$TrainerState {
  const factory TrainerState.initial() = TrainerInitial;
  const factory TrainerState.loading() = TrainerLoading;
  const factory TrainerState.loaded(List<TrainerModel> trainers) =
      TrainerLoaded;
  const factory TrainerState.trainerLoaded(TrainerModel trainer) =
      TrainerDetailLoaded;
  const factory TrainerState.dashboardLoaded(Map<String, dynamic> data) =
      TrainerDashboardLoaded;
  const factory TrainerState.success(String message) = TrainerSuccess;
  const factory TrainerState.error(String message) = TrainerError;
}
