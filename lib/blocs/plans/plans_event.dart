import 'package:freezed_annotation/freezed_annotation.dart';

part 'plans_event.freezed.dart';

@freezed
class PlansEvent with _$PlansEvent {
  const factory PlansEvent.started() = _Started;
  const factory PlansEvent.createPlan({
    required String name,
    required String description,
    required String price,
    required int duration,
    required String type,
    @Default(true) bool isActive,
    @Default([]) List<String> features,
  }) = _CreatePlan;
  const factory PlansEvent.updatePlan({
    required String id,
    required String name,
    required String description,
    required String price,
    required int duration,
    required String type,
    required bool isActive,
    required List<String> features,
  }) = _UpdatePlan;
  const factory PlansEvent.deletePlan(String id) = _DeletePlan;
}
