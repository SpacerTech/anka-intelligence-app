import 'package:anka_intelligence_app/api/blocs/auth_bloc/auth_bloc.dart';
import 'package:anka_intelligence_app/api/blocs/calendar_bloc/calendar_bloc.dart';
import 'package:anka_intelligence_app/api/blocs/course_bloc/course_bloc.dart';
import 'package:anka_intelligence_app/api/blocs/note_bloc/note_bloc.dart';
import 'package:anka_intelligence_app/api/blocs/profile_bloc/profile_bloc.dart';
import 'package:anka_intelligence_app/api/repositories/auth_repository.dart';
import 'package:anka_intelligence_app/api/repositories/calendar_repository.dart';
import 'package:anka_intelligence_app/api/repositories/course_repository.dart';
import 'package:anka_intelligence_app/api/repositories/note_repository.dart';
import 'package:anka_intelligence_app/api/repositories/user_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../api/repositories/storage_repository.dart';

final authBlocProvider = BlocProvider<AuthBloc>(
    create: (context) => AuthBloc(AuthRepository(), UserRepository()));

final profileBlocProvider = BlocProvider<ProfileBloc>(
  create: (context) => ProfileBloc(UserRepository(), StorageRepository()),
);
final courseBlocProvider = BlocProvider<CourseBloc>(
  create: (context) => CourseBloc(CourseRepository()),
);

final classesBlocProvider = BlocProvider<ClassesBloc>(
  create: (context) => ClassesBloc(CalendarRepository()),
);

final noteBlocProvider = BlocProvider<NoteBloc>(
  create: (context) => NoteBloc(NoteRepository()),
);
