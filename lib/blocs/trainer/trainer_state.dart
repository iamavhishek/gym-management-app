import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gym_management_app/models/trainer_model.dart';

part 'trainer_state.freezed.dart';

@freezed
class TrainerState with _$TrainerState {
  const factory TrainerState.initial() = _Initial;
  const factory TrainerState.loading() = _Loading;
  const factory TrainerState.loaded(List<TrainerModel> trainers) = _Loaded;
  const factory TrainerState.trainerLoaded(TrainerModel trainer) =
      _TrainerLoaded;
  const factory TrainerState.dashboardLoaded(Map<String, dynamic> data) =
      _DashboardLoaded;
  const factory TrainerState.success(String message) = _Success;
  const factory TrainerState.error(String message) = _Error;
}
