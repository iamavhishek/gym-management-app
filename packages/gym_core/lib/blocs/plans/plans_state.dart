import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gym_core/models/payment_model.dart';

part 'plans_state.freezed.dart';

@freezed
class PlansState with _$PlansState {
  const factory PlansState.initial() = _Initial;
  const factory PlansState.loading() = _Loading;
  const factory PlansState.loaded(List<MembershipPlanModel> plans) = _Loaded;
  const factory PlansState.error(String message) = _Error;
}
