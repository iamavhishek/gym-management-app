import 'dart:developer' as developer;

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gym_core/blocs/payment/payment_event.dart';
import 'package:gym_core/blocs/payment/payment_state.dart';
import 'package:gym_core/repositories/payment_repository.dart';

class PaymentBloc extends Bloc<PaymentEvent, PaymentState> {
  final PaymentRepository _paymentRepository;

  PaymentBloc(this._paymentRepository) : super(const PaymentState.initial()) {
    on<PaymentEvent>((event, emit) async {
      await event.when(
        fetchPayments: (page, limit) async {
          emit(const PaymentState.loading());
          try {
            final payments = await _paymentRepository.getPayments(
              page: page,
              limit: limit,
            );
            emit(PaymentState.loaded(payments));
          } catch (e, s) {
            developer.log('Error in PaymentBloc', error: e, stackTrace: s);
            emit(PaymentState.error(e.toString()));
          }
        },
        createPayment:
            (
              membershipId,
              memberId,
              planId,
              amount,
              paymentMethod,
              startDate,
              notes,
            ) async {
              emit(const PaymentState.loading());
              try {
                await _paymentRepository.createPayment(
                  membershipId: membershipId,
                  memberId: memberId,
                  planId: planId,
                  amount: amount,
                  paymentMethod: paymentMethod,
                  startDate: startDate,
                  notes: notes,
                );
                emit(
                  const PaymentState.success('Payment recorded successfully'),
                );
                add(const PaymentEvent.fetchPayments());
              } catch (e) {
                emit(PaymentState.error(e.toString()));
              }
            },
      );
    });
  }
}
