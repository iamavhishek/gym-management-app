import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gym_core/blocs/attendance/attendance_event.dart';
import 'package:gym_core/blocs/attendance/attendance_state.dart';
import 'package:gym_core/repositories/attendance_repository.dart';

class AttendanceBloc extends Bloc<AttendanceEvent, AttendanceState> {
  final AttendanceRepository _attendanceRepository;

  AttendanceBloc(this._attendanceRepository)
    : super(const AttendanceState.initial()) {
    on<AttendanceEvent>((event, emit) async {
      await event.when(
        fetchHistory: (memberId) async {
          emit(const AttendanceState.loading());
          try {
            final history = await _attendanceRepository.getAttendance(memberId);
            emit(AttendanceState.loaded(history));
          } catch (e) {
            emit(AttendanceState.error(e.toString()));
          }
        },
        checkIn: (memberId, method) async {
          emit(const AttendanceState.loading());
          try {
            await _attendanceRepository.checkIn(memberId, method);
            emit(const AttendanceState.success('Check-in successful'));
            add(AttendanceEvent.fetchHistory(memberId));
          } catch (e) {
            emit(AttendanceState.error(e.toString()));
          }
        },
        checkOut: (attendanceId) async {
          emit(const AttendanceState.loading());
          try {
            await _attendanceRepository.checkOut(attendanceId);
            emit(const AttendanceState.success('Check-out successful'));
            // Note: We might need memberId here to refresh history, or just emit success
          } catch (e) {
            emit(AttendanceState.error(e.toString()));
          }
        },
        scanQr: (qrCode) async {
          emit(const AttendanceState.loading());
          try {
            final attendance = await _attendanceRepository.scanQrCode(qrCode);
            emit(const AttendanceState.success('Scan successful'));
            add(AttendanceEvent.fetchHistory(attendance.memberId));
          } catch (e) {
            emit(AttendanceState.error(e.toString()));
          }
        },
      );
    });
  }
}
