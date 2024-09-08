import 'package:flutter_bloc/flutter_bloc.dart';


class AnnouncementBloc extends Bloc<AnnouncementEvent, AnnouncementState> {
  final AnnouncementRepository _announcementRepository;
  AnnouncementBloc(this._announcementRepository)
      : super(AnnouncementInitial()) {
    on<GetAnnouncement>(_onGetAnnouncement);
  }

  Future<void> _onGetAnnouncement(
      GetAnnouncement event, Emitter<AnnouncementState> emit) async {
    emit(AnnouncementLoading());
    try {
      final List<AnnouncementModel> announcement =
          await _announcementRepository.getAnnouncement();
      emit(AnnouncementLoaded(announcement: announcement));
    } catch (e) {
      emit(AnnouncementError(message: "Hata!!!"));
    }
  }
}
