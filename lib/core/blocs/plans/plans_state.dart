import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gym_management_app/core/models/payment_model.dart';

part 'plans_state.freezed.dart';

@freezed
class PlansState with _$PlansState {
  const factory PlansState.initial() = PlansInitial;
  const factory PlansState.loading() = PlansLoading;
  const factory PlansState.loaded(List<MembershipPlanModel> plans) =
      PlansLoaded;
  const factory PlansState.error(String message) = PlansError;
}
