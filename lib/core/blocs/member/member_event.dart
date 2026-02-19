import 'package:freezed_annotation/freezed_annotation.dart';

part 'member_event.freezed.dart';

@freezed
class MemberEvent with _$MemberEvent {
  const factory MemberEvent.profileStarted() = _ProfileStarted;
  const factory MemberEvent.updateProfile({
    String? phone,
    String? height,
    String? weight,
    String? goals,
  }) = _UpdateProfile;
  const factory MemberEvent.fetchMembers({@Default(1) int page}) =
      _FetchMembers;
  const factory MemberEvent.createMember(Map<String, dynamic> memberData) =
      _CreateMember;
  const factory MemberEvent.updateMember(
    String id,
    Map<String, dynamic> data,
  ) = _UpdateMember;
  const factory MemberEvent.fetchClients() = _FetchClients;
  const factory MemberEvent.fetchMemberDetails(String id) = _FetchMemberDetails;
}
