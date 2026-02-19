import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_event.freezed.dart';

@freezed
abstract class PaymentEvent with _$PaymentEvent {
  const factory PaymentEvent.fetchPayments({
    @Default(1) int page,
    @Default(20) int limit,
  }) = _FetchPayments;
  const factory PaymentEvent.createPayment({
    String? membershipId,
    String? memberId,
    String? planId,
    required String amount,
    required String paymentMethod,
    String? startDate,
    String? notes,
  }) = _CreatePayment;

  const factory PaymentEvent.updatePayment({
    required String id,
    String? amount,
    String? paymentMethod,
    String? status,
    String? notes,
  }) = _UpdatePayment;

  const factory PaymentEvent.deletePayment(String id) = _DeletePayment;
}
