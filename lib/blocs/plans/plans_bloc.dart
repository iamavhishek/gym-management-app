import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gym_management_app/blocs/plans/plans_event.dart';
import 'package:gym_management_app/blocs/plans/plans_state.dart';
import 'package:gym_management_app/repositories/payment_repository.dart';

class PlansBloc extends Bloc<PlansEvent, PlansState> {
  final PaymentRepository _paymentRepository;

  PlansBloc(this._paymentRepository) : super(const PlansState.initial()) {
    on<PlansEvent>((event, emit) async {
      await event.when(
        started: () async {
          emit(const PlansState.loading());
          try {
            final plans = await _paymentRepository.getMembershipPlans();
            emit(PlansState.loaded(plans));
          } catch (e) {
            emit(PlansState.error(e.toString()));
          }
        },
        createPlan:
            (
              name,
              description,
              price,
              duration,
              type,
              isActive,
              features,
            ) async {
              emit(const PlansState.loading());
              try {
                await _paymentRepository.createMembershipPlan(
                  name: name,
                  description: description,
                  price: price,
                  duration: duration,
                  type: type,
                  isActive: isActive,
                  features: features,
                );
                final plans = await _paymentRepository.getMembershipPlans();
                emit(PlansState.loaded(plans));
              } catch (e) {
                emit(PlansState.error(e.toString()));
              }
            },
        updatePlan:
            (
              id,
              name,
              description,
              price,
              duration,
              type,
              isActive,
              features,
            ) async {
              emit(const PlansState.loading());
              try {
                await _paymentRepository.updateMembershipPlan(
                  id: id,
                  name: name,
                  description: description,
                  price: price,
                  duration: duration,
                  type: type,
                  isActive: isActive,
                  features: features,
                );
                final plans = await _paymentRepository.getMembershipPlans();
                emit(PlansState.loaded(plans));
              } catch (e) {
                emit(PlansState.error(e.toString()));
              }
            },
        deletePlan: (id) async {
          emit(const PlansState.loading());
          try {
            await _paymentRepository.deleteMembershipPlan(id);
            final plans = await _paymentRepository.getMembershipPlans();
            emit(PlansState.loaded(plans));
          } catch (e) {
            emit(PlansState.error(e.toString()));
          }
        },
      );
    });
  }
}
