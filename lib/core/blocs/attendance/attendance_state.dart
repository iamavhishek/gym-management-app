import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gym_management_app/core/models/attendance_model.dart';

part 'attendance_state.freezed.dart';

@freezed
class AttendanceState with _$AttendanceState {
  const factory AttendanceState.initial() = AttendanceInitial;
  const factory AttendanceState.loading() = AttendanceLoading;
  const factory AttendanceState.loaded(List<AttendanceModel> history) =
      AttendanceLoaded;
  const factory AttendanceState.success(String message) = AttendanceSuccess;
  const factory AttendanceState.error(String message) = AttendanceError;
}
