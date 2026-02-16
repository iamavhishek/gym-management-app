import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gym_core/models/class_model.dart';

part 'class_state.freezed.dart';

@freezed
class ClassState with _$ClassState {
  const factory ClassState.initial() = _Initial;
  const factory ClassState.loading() = _Loading;
  const factory ClassState.loaded(List<ClassModel> classes) = _Loaded;
  const factory ClassState.error(String message) = _Error;
}
