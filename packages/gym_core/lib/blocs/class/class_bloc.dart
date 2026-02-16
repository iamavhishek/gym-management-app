import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gym_core/blocs/class/class_event.dart';
import 'package:gym_core/blocs/class/class_state.dart';
import 'package:gym_core/repositories/class_repository.dart';

class ClassBloc extends Bloc<ClassEvent, ClassState> {
  final ClassRepository _classRepository;

  ClassBloc(this._classRepository) : super(const ClassState.initial()) {
    on<ClassEvent>((event, emit) async {
      await event.when(
        started: () async {
          emit(const ClassState.loading());
          try {
            final classes = await _classRepository.getClasses();
            emit(ClassState.loaded(classes));
          } catch (e) {
            emit(ClassState.error(e.toString()));
          }
        },
        bookClass: (classId, memberId) async {
          // Note: In a real app, you might want to emit a partial loading state
          try {
            await _classRepository.bookClass(classId, memberId);
            final classes = await _classRepository.getClasses();
            emit(ClassState.loaded(classes));
          } catch (e) {
            emit(ClassState.error(e.toString()));
          }
        },
        joinWaitlist: (classId, memberId) async {
          // Implement join waitlist in repository if needed
          emit(
            const ClassState.error(
              'Waitlist not implemented in repository yet',
            ),
          );
        },
        createClass:
            (
              name,
              description,
              trainerId,
              maxCapacity,
              startTime,
              endTime,
              type,
            ) async {
              emit(const ClassState.loading());
              try {
                await _classRepository.createClass(
                  name: name,
                  description: description,
                  trainerId: trainerId,
                  maxCapacity: maxCapacity,
                  startTime: startTime,
                  endTime: endTime,
                  type: type,
                );
                final classes = await _classRepository.getClasses();
                emit(ClassState.loaded(classes));
              } catch (e) {
                emit(ClassState.error(e.toString()));
              }
            },
        updateClass:
            (
              id,
              name,
              description,
              maxCapacity,
              startTime,
              endTime,
              status,
              type,
            ) async {
              emit(const ClassState.loading());
              try {
                await _classRepository.updateClass(
                  id: id,
                  name: name,
                  description: description,
                  maxCapacity: maxCapacity,
                  startTime: startTime,
                  endTime: endTime,
                  status: status,
                  type: type,
                );
                final classes = await _classRepository.getClasses();
                emit(ClassState.loaded(classes));
              } catch (e) {
                emit(ClassState.error(e.toString()));
              }
            },
        deleteClass: (id) async {
          emit(const ClassState.loading());
          try {
            await _classRepository.deleteClass(id);
            final classes = await _classRepository.getClasses();
            emit(ClassState.loaded(classes));
          } catch (e) {
            emit(ClassState.error(e.toString()));
          }
        },
      );
    });
  }
}
