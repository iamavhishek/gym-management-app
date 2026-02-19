import 'package:freezed_annotation/freezed_annotation.dart';

part 'attendance_model.freezed.dart';
part 'attendance_model.g.dart';

@freezed
abstract class AttendanceModel with _$AttendanceModel {
  const factory AttendanceModel({
    required String id,
    required String memberId,
    required DateTime checkInTime,
    DateTime? checkOutTime,
    int? duration, // Minutes
    @Default('QR') String method, // 'QR', 'MANUAL', 'RFID'
    @Default('present') String status, // 'present', 'late', 'absent', 'excused'
    // For manual entry
    String? notes,
  }) = _AttendanceModel;

  factory AttendanceModel.fromJson(Map<String, dynamic> json) =>
      _$AttendanceModelFromJson(json);
}
