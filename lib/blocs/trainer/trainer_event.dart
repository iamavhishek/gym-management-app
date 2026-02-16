import 'package:freezed_annotation/freezed_annotation.dart';

part 'trainer_event.freezed.dart';

@freezed
class TrainerEvent with _$TrainerEvent {
  const factory TrainerEvent.fetchTrainers() = _FetchTrainers;
  const factory TrainerEvent.fetchTrainerDetails(String id) =
      _FetchTrainerDetails;
  const factory TrainerEvent.createTrainer(Map<String, dynamic> data) =
      _CreateTrainer;
  const factory TrainerEvent.updateTrainer(
    String id,
    Map<String, dynamic> data,
  ) = _UpdateTrainer;
  const factory TrainerEvent.fetchDashboard() = _FetchDashboard;
}
