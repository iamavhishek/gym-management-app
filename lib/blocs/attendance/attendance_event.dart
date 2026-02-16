import 'package:freezed_annotation/freezed_annotation.dart';

part 'attendance_event.freezed.dart';

@freezed
class AttendanceEvent with _$AttendanceEvent {
  const factory AttendanceEvent.fetchHistory(String memberId) = _FetchHistory;
  const factory AttendanceEvent.checkIn(String memberId, String method) =
      _CheckIn;
  const factory AttendanceEvent.checkOut(String attendanceId) = _CheckOut;
  const factory AttendanceEvent.scanQr(String qrCode) = _ScanQr;
}
