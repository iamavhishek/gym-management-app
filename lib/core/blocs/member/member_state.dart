import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gym_management_app/core/models/member_model.dart';

part 'member_state.freezed.dart';

@freezed
class MemberState with _$MemberState {
  const factory MemberState.initial() = MemberInitial;
  const factory MemberState.loading() = MemberLoading;
  const factory MemberState.profileLoaded(MemberModel profile) =
      MemberProfileLoaded;
  const factory MemberState.membersLoaded(List<MemberModel> members) =
      MemberMembersLoaded;
  const factory MemberState.memberDetailLoaded(MemberModel member) =
      MemberDetailLoaded;
  const factory MemberState.error(String message) = MemberError;
  const factory MemberState.updateSuccess(
    String message, [
    MemberModel? profile,
  ]) = MemberUpdateSuccess;
}
