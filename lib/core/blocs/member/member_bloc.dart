import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gym_management_app/core/blocs/member/member_event.dart';
import 'package:gym_management_app/core/blocs/member/member_state.dart';
import 'package:gym_management_app/core/repositories/member_repository.dart';

class MemberBloc extends Bloc<MemberEvent, MemberState> {
  final MemberRepository _memberRepository;

  MemberBloc(this._memberRepository) : super(const MemberState.initial()) {
    on<MemberEvent>((event, emit) async {
      await event.when(
        profileStarted: () async {
          emit(const MemberState.loading());
          try {
            final member = await _memberRepository.getProfile();
            emit(MemberState.profileLoaded(member));
          } catch (e) {
            emit(MemberState.error(e.toString()));
          }
        },
        updateProfile: (phone, height, weight, goals) async {
          emit(const MemberState.loading());
          try {
            await _memberRepository.updateProfile(
              phone: phone,
              height: height,
              weight: weight,
              goals: goals,
            );
            final member = await _memberRepository.getProfile();
            emit(
              MemberState.updateSuccess('Profile updated successfully', member),
            );
          } catch (e) {
            emit(MemberState.error(e.toString()));
          }
        },
        fetchMembers: (page) async {
          emit(const MemberState.loading());
          try {
            final members = await _memberRepository.getMembers(page: page);
            emit(MemberState.membersLoaded(members));
          } catch (e) {
            emit(MemberState.error(e.toString()));
          }
        },
        createMember: (data) async {
          emit(const MemberState.loading());
          try {
            await _memberRepository.createMember(data);
            emit(
              const MemberState.updateSuccess('Member created successfully'),
            );
            add(const MemberEvent.fetchMembers());
          } catch (e) {
            emit(MemberState.error(e.toString()));
          }
        },
        fetchClients: () async {
          emit(const MemberState.loading());
          try {
            final members = await _memberRepository.getTrainerClients();
            emit(MemberState.membersLoaded(members));
          } catch (e) {
            emit(MemberState.error(e.toString()));
          }
        },
        updateMember: (id, data) async {
          emit(const MemberState.loading());
          try {
            await _memberRepository.updateMember(id, data);
            emit(
              const MemberState.updateSuccess('Member updated successfully'),
            );
            add(const MemberEvent.fetchMembers());
          } catch (e) {
            emit(MemberState.error(e.toString()));
          }
        },
        fetchMemberDetails: (id) async {
          emit(const MemberState.loading());
          try {
            final member = await _memberRepository.getMemberById(id);
            emit(MemberState.memberDetailLoaded(member));
          } catch (e) {
            emit(MemberState.error(e.toString()));
          }
        },
      );
    });
  }
}
