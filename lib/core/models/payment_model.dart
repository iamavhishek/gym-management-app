import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_model.freezed.dart';
part 'payment_model.g.dart';

@freezed
abstract class PaymentModel with _$PaymentModel {
  const factory PaymentModel({
    required String id,
    required String membershipId,
    String? memberId,
    required String amount,
    required String paymentMethod, // 'cash', 'bank_transfer', 'card', 'qr'
    required String status, // 'completed', 'pending', 'failed', 'refunded'
    DateTime? paymentDate,
    String? transactionId,
    String? invoiceNumber,
    String? notes,
    String? dueDate,
    String? promoCode,
    String? discountAmount,
  }) = _PaymentModel;

  factory PaymentModel.fromJson(Map<String, dynamic> json) =>
      _$PaymentModelFromJson(json);
}

@freezed
abstract class MembershipPlanModel with _$MembershipPlanModel {
  const factory MembershipPlanModel({
    required String id,
    required String name,
    @Default('') String description,
    required String price,
    required int duration,
    String? type, // 'regular', 'premium', 'trial'
    @Default(true) bool isActive,
    @Default([]) List<String> features,
  }) = _MembershipPlanModel;

  factory MembershipPlanModel.fromJson(Map<String, dynamic> json) =>
      _$MembershipPlanModelFromJson(json);
}
