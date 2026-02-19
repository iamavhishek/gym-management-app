// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaymentModel _$PaymentModelFromJson(Map<String, dynamic> json) =>
    _PaymentModel(
      id: json['id'] as String,
      membershipId: json['membershipId'] as String,
      amount: json['amount'] as String,
      paymentMethod: json['paymentMethod'] as String,
      status: json['status'] as String,
      paymentDate: json['paymentDate'] == null
          ? null
          : DateTime.parse(json['paymentDate'] as String),
      transactionId: json['transactionId'] as String?,
      invoiceNumber: json['invoiceNumber'] as String?,
      notes: json['notes'] as String?,
      dueDate: json['dueDate'] as String?,
      promoCode: json['promoCode'] as String?,
      discountAmount: json['discountAmount'] as String?,
    );

Map<String, dynamic> _$PaymentModelToJson(_PaymentModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'membershipId': instance.membershipId,
      'amount': instance.amount,
      'paymentMethod': instance.paymentMethod,
      'status': instance.status,
      'paymentDate': instance.paymentDate?.toIso8601String(),
      'transactionId': instance.transactionId,
      'invoiceNumber': instance.invoiceNumber,
      'notes': instance.notes,
      'dueDate': instance.dueDate,
      'promoCode': instance.promoCode,
      'discountAmount': instance.discountAmount,
    };

_MembershipPlanModel _$MembershipPlanModelFromJson(Map<String, dynamic> json) =>
    _MembershipPlanModel(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String? ?? '',
      price: json['price'] as String,
      duration: (json['duration'] as num).toInt(),
      type: json['type'] as String?,
      isActive: json['isActive'] as bool? ?? true,
      features:
          (json['features'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$MembershipPlanModelToJson(
  _MembershipPlanModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'description': instance.description,
  'price': instance.price,
  'duration': instance.duration,
  'type': instance.type,
  'isActive': instance.isActive,
  'features': instance.features,
};
