import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gym_management_app/core/models/payment_model.dart';

part 'payment_state.freezed.dart';

@freezed
class PaymentState with _$PaymentState {
  const factory PaymentState.initial() = PaymentInitial;
  const factory PaymentState.loading() = PaymentLoading;
  const factory PaymentState.loaded(List<PaymentModel> payments) =
      PaymentLoaded;
  const factory PaymentState.success(String message) = PaymentSuccess;
  const factory PaymentState.error(String message) = PaymentError;
}
