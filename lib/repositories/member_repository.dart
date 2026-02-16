import 'package:gym_management_app/models/member_model.dart';
import 'package:gym_management_app/repositories/api_repository.dart';

class MemberRepository {
  final ApiRepository _apiRepository = ApiRepository();

  Future<MemberModel> getProfile() async {
    final response = await _apiRepository.get('/members/profile');
    // /members/profile returns { member: {...}, membership: {...}, ... }
    return MemberModel.fromJson(
      response['data']['member'] as Map<String, dynamic>,
    );
  }

  Future<MemberModel> getMemberById(String memberId) async {
    final response = await _apiRepository.get('/members/$memberId');
    final memberData = response['data']['member'] as Map<String, dynamic>;
    // Member details are already merged in backend now, but let's be safe
    return MemberModel.fromJson(memberData);
  }

  Future<List<MemberModel>> getMembers({int page = 1, int limit = 20}) async {
    try {
      final response = await _apiRepository.get(
        '/members',
        params: {'page': '$page', 'limit': '$limit'},
      );
      final List<dynamic> jsonList = response['data']['members'] as List? ?? [];
      return jsonList
          .map((e) => MemberModel.fromJson(e as Map<String, dynamic>))
          .toList();
    } catch (e) {
      return [];
    }
  }

  Future<void> updateProfile({
    String? phone,
    String? height,
    String? weight,
    String? goals,
  }) async {
    await _apiRepository.put(
      '/auth/profile',
      body: {
        'phone': phone,
        'height': height,
        'weight': weight,
        'goals': goals,
      },
    );
  }

  Future<void> updateMember(
    String memberId,
    Map<String, dynamic> updates,
  ) async {
    await _apiRepository.put('/members/$memberId', body: updates);
  }

  Future<void> createMember(Map<String, dynamic> memberData) async {
    await _apiRepository.post('/members', body: memberData);
  }

  Future<List<MemberModel>> getTrainerClients() async {
    final response = await _apiRepository.get('/trainers/clients');
    final List<dynamic> jsonList = response['data'] as List? ?? [];
    return jsonList.map((e) {
      // Backend returns assignments with nested member
      return MemberModel.fromJson(e['member'] as Map<String, dynamic>);
    }).toList();
  }
}
