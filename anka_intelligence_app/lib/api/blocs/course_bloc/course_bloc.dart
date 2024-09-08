import 'package:anka_intelligence_app/api/blocs/course_bloc/course_event.dart';
import 'package:anka_intelligence_app/api/blocs/course_bloc/course_state.dart';
import 'package:anka_intelligence_app/api/repositories/course_repository.dart';
import 'package:anka_intelligence_app/models/course_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class CourseBloc extends Bloc<CourseEvent, CourseState> {
  final CourseRepository _courseRepository;
  CourseBloc(this._courseRepository) : super(CourseInitial()) {
    on<GetCourse>(_onGetCourse);
  }

  Future<void> _onGetCourse(GetCourse event, Emitter<CourseState> emit) async {
    emit(CourseLoading());
    try {
      final List<Course> course = await _courseRepository.getCourse();
      emit(CourseLoaded(course: course));
    } catch (e) {
      emit(CourseError(message: "Hata!!!"));
    }
  }
}
