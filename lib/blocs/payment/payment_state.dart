import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gym_management_app/models/payment_model.dart';

part 'payment_state.freezed.dart';

@freezed
class PaymentState with _$PaymentState {
  const factory PaymentState.initial() = _Initial;
  const factory PaymentState.loading() = _Loading;
  const factory PaymentState.loaded(List<PaymentModel> payments) = _Loaded;
  const factory PaymentState.success(String message) = _Success;
  const factory PaymentState.error(String message) = _Error;
}
