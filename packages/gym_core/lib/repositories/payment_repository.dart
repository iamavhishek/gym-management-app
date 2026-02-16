import 'package:gym_core/models/payment_model.dart';
import 'package:gym_core/repositories/api_repository.dart';

class PaymentRepository {
  final ApiRepository _apiRepository;

  PaymentRepository(this._apiRepository);

  Future<List<PaymentModel>> getPayments({int page = 1, int limit = 20}) async {
    final response = await _apiRepository.get(
      '/payments?page=$page&limit=$limit',
    );
    final List<dynamic> data = response['data']['payments'] as List? ?? [];
    return data
        .map((e) => PaymentModel.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  Future<void> createPayment({
    String? membershipId,
    String? memberId,
    String? planId,
    required String amount,
    required String paymentMethod,
    String? startDate,
    String? notes,
  }) async {
    await _apiRepository.post(
      '/payments',
      body: {
        'membershipId': ?membershipId,
        'memberId': ?memberId,
        'planId': ?planId,
        'amount': amount,
        'paymentMethod': paymentMethod,
        'startDate': ?startDate,
        'notes': ?notes,
      },
    );
  }

  Future<List<MembershipPlanModel>> getMembershipPlans() async {
    try {
      final response = await _apiRepository.get('/membership-plans');
      final List<dynamic> data = response['data']['plans'] as List? ?? [];
      return data
          .map((e) => MembershipPlanModel.fromJson(e as Map<String, dynamic>))
          .toList();
    } catch (e) {
      return [];
    }
  }

  Future<void> createMembershipPlan({
    required String name,
    required String description,
    required String price,
    required int duration,
    required String type,
    bool isActive = true,
    List<String> features = const [],
  }) async {
    await _apiRepository.post(
      '/membership-plans',
      body: {
        'name': name,
        'description': description,
        'price': price,
        'duration': duration,
        'type': type,
        'isActive': isActive,
        'features': features,
      },
    );
  }

  Future<void> updateMembershipPlan({
    required String id,
    required String name,
    required String description,
    required String price,
    required int duration,
    required String type,
    bool isActive = true,
    List<String> features = const [],
  }) async {
    await _apiRepository.put(
      '/membership-plans/$id',
      body: {
        'name': name,
        'description': description,
        'price': price,
        'duration': duration,
        'type': type,
        'isActive': isActive,
        'features': features,
      },
    );
  }

  Future<void> deleteMembershipPlan(String id) async {
    await _apiRepository.delete('/membership-plans/$id');
  }
}
