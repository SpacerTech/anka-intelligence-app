import 'package:anka_intelligence_app/api/blocs/calendar_bloc/calendar_event.dart';
import 'package:anka_intelligence_app/api/blocs/calendar_bloc/calendar_state.dart';
import 'package:anka_intelligence_app/api/repositories/calendar_repository.dart';
import 'package:anka_intelligence_app/models/classes_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';




class ClassesBloc extends Bloc<ClassesEvent, ClassesState> {
  final CalendarRepository _classesRepository;
  ClassesBloc(this._classesRepository) : super(ClassesInitial()) {
    on<GetClasses>(_onGetClasses);
  }
  Future<void> _onGetClasses(
      GetClasses event, Emitter<ClassesState> emit) async {
    emit(ClassesLoading());
    try {
      final List<Classes> classes = await _classesRepository.getClasses();
      emit(ClassesLoaded(classes: classes));
    } catch (e) {
      emit(ClassesError(message: "Hata!!!"));
    }
  }
}
