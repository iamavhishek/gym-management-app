import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gym_management_app/models/member_model.dart';

part 'member_state.freezed.dart';

@freezed
class MemberState with _$MemberState {
  const factory MemberState.initial() = _Initial;
  const factory MemberState.loading() = _Loading;
  const factory MemberState.profileLoaded(MemberModel profile) = _ProfileLoaded;
  const factory MemberState.membersLoaded(List<MemberModel> members) =
      _MembersLoaded;
  const factory MemberState.memberDetailLoaded(MemberModel member) =
      _MemberDetailLoaded;
  const factory MemberState.error(String message) = _Error;
  const factory MemberState.updateSuccess(
    String message, [
    MemberModel? profile,
  ]) = _UpdateSuccess;
}
