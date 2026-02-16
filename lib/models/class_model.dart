import 'package:freezed_annotation/freezed_annotation.dart';

part 'class_model.freezed.dart';
part 'class_model.g.dart';

@freezed
abstract class ClassModel with _$ClassModel {
  const factory ClassModel({
    required String id,
    required String name,
    @Default('') String description,
    required String trainerId,
    @Default('') String trainerName,
    required DateTime startTime,
    required DateTime endTime,
    required int maxCapacity,
    @Default(0) int bookedCount,
    required String status, // 'scheduled', 'cancelled', 'completed', 'ongoing'
    required String type, // 'yoga', 'zumba', 'boxing'
    String? imageUrl,
    String? recurrenceRule,
  }) = _ClassModel;

  factory ClassModel.fromJson(Map<String, dynamic> json) =>
      _$ClassModelFromJson(json);
}

@freezed
abstract class ClassBookingModel with _$ClassBookingModel {
  const factory ClassBookingModel({
    required String id,
    required String classId,
    required String memberId,
    required DateTime bookingDate,
    @Default('confirmed')
    String status, // 'confirmed', 'cancelled', 'waitlisted'
    bool? attended,
    String? notes,
  }) = _ClassBookingModel;

  factory ClassBookingModel.fromJson(Map<String, dynamic> json) =>
      _$ClassBookingModelFromJson(json);
}
