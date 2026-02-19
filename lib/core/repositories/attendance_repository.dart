import 'package:gym_management_app/core/models/attendance_model.dart';
import 'package:gym_management_app/core/repositories/api_repository.dart';

class AttendanceRepository {
  final ApiRepository _apiRepository;

  AttendanceRepository(this._apiRepository);

  Future<List<AttendanceModel>> getAttendance(String memberId) async {
    final response = await _apiRepository.get('/members/$memberId/attendance');
    final List<dynamic> data = (response['data']['attendance']) as List? ?? [];
    return data
        .map((e) => AttendanceModel.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  Future<AttendanceModel> checkIn(String memberId, String method) async {
    final response = await _apiRepository.post(
      '/attendance/check-in',
      body: {'memberId': memberId, 'method': method},
    );
    return AttendanceModel.fromJson(
      response['data']['attendance'] as Map<String, dynamic>,
    );
  }

  Future<void> checkOut(String memberId) async {
    await _apiRepository.post(
      '/attendance/check-out',
      body: {'memberId': memberId},
    );
  }

  Future<AttendanceModel> scanQrCode(String qrData) async {
    final response = await _apiRepository.post(
      '/attendance/scan-qrcode',
      body: {'qrData': qrData},
    );
    return AttendanceModel.fromJson(
      response['data']['attendance'] as Map<String, dynamic>,
    );
  }
}
