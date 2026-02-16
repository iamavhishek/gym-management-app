import 'package:freezed_annotation/freezed_annotation.dart';

part 'class_event.freezed.dart';

@freezed
class ClassEvent with _$ClassEvent {
  const factory ClassEvent.started() = _Started;
  const factory ClassEvent.bookClass(String classId, String memberId) =
      _BookClass;
  const factory ClassEvent.joinWaitlist(String classId, String memberId) =
      _JoinWaitlist;
  const factory ClassEvent.createClass({
    required String name,
    required String description,
    required String trainerId,
    required int maxCapacity,
    required DateTime startTime,
    required DateTime endTime,
    required String type,
  }) = _CreateClass;
  const factory ClassEvent.updateClass({
    required String id,
    String? name,
    String? description,
    int? maxCapacity,
    DateTime? startTime,
    DateTime? endTime,
    String? status,
    String? type,
  }) = _UpdateClass;
  const factory ClassEvent.deleteClass(String id) = _DeleteClass;
}
