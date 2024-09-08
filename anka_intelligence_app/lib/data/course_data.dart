

import 'package:anka_intelligence_app/models/course_model.dart';

List videoLink = [
  "https://cdn.cms.medianova.com/p/132/sp/13200/serveFlavor/entryId/0_402pg2wr/v/2/ev/10/flavorId/0_jpibng14/forceproxy/true/name/a.mp4",
  "https://cdn.cms.medianova.com/p/132/sp/13200/serveFlavor/entryId/0_1d1xnbrn/v/2/ev/10/flavorId/0_ccav4sj4/forceproxy/true/name/a.mp4",
  "https://cdn.cms.medianova.com/p/132/sp/13200/serveFlavor/entryId/0_yiu6meor/v/2/ev/10/flavorId/0_t84jbjzz/forceproxy/true/name/a.mp4"
];

List<Course> courseList = <Course>[
  Course(
    title: "Dr. Ecmel Ayral'dan Hoşgeldin Mesajı",
    lessonCount: "3 dk",
    money: 0,
    rating: 4.6,
    imagePath: "assets/images/course_images/ecmel_ayran.png",
    progress: 100,
    filterNumber: 3,
    startDate: DateTime.now(),
    endDate: DateTime.now(),
    spentTime: const Duration(days: 4),
    estimatedTime: const Duration(days: 4),
    videoCount: 3,
    videoList: List.generate(
      3,
      (index) => Video(
        id: index + 1,
        videoTitle: "İçerik ${index + 1}",
        link: videoLink[index],
        duration: Duration(minutes: (index + 1) * 10),
      ),
    ),
  ),
  Course(
    title: "Eğitimlere Nasıl Katılırım?",
    lessonCount: "1 dk",
    money: 0,
    rating: 4.3,
    imagePath: "assets/images/course_images/istanbul_kod.png",
    progress: 100,
    filterNumber: 3,
    startDate: DateTime.now(),
    endDate: DateTime.now(),
    spentTime: const Duration(days: 3),
    estimatedTime: const Duration(days: 3),
    videoCount: 1,
    videoList: List.generate(
      1,
      (index) => Video(
        id: index + 1,
        videoTitle: "İçerik ${index + 1}",
        link: videoLink[index],
        duration: Duration(minutes: (index + 1) * 10),
      ),
    ),
  ),
  Course(
    title: "Herkes İçin Kodlama - 2B",
    lessonCount: "47 sa 56 dk",
    money: 0,
    rating: 3.9,
    imagePath: "assets/images/course_images/kodlama.png",
    progress: 100,
    filterNumber: 3,
    startDate: DateTime.now(),
    endDate: DateTime.now(),
    spentTime: const Duration(days: 1),
    estimatedTime: const Duration(days: 1),
    videoCount: 1,
    videoList: List.generate(
      1,
      (index) => Video(
        id: index + 1,
        videoTitle: "İçerik ${index + 1}",
        link: videoLink[index],
        duration: Duration(minutes: (index + 1) * 10),
      ),
    ),
  ),
  Course(
    title: "Hoşgeldin Buluşması - 2",
    lessonCount: "",
    money: 0,
    rating: 4.8,
    imagePath: "assets/images/course_images/hosgeldin.png",
    progress: 100,
    filterNumber: 3,
    startDate: DateTime.now(),
    endDate: DateTime.now(),
    spentTime: const Duration(days: 2),
    estimatedTime: const Duration(days: 2),
    videoCount: 3,
    videoList: List.generate(
      3,
      (index) => Video(
        id: index + 1,
        videoTitle: "İçerik ${index + 1}",
        link: videoLink[index],
        duration: Duration(minutes: (index + 1) * 10),
      ),
    ),
  ),
  Course(
    title: "İstanbul Kodluyor Proje Aşamaları",
    lessonCount: "1 dk",
    money: 0,
    rating: 4.1,
    imagePath: "assets/images/course_images/proje_asamalari.png",
    progress: 50,
    filterNumber: 3,
    startDate: DateTime.now(),
    endDate: DateTime.now(),
    spentTime: const Duration(days: 2),
    estimatedTime: const Duration(days: 2),
    videoCount: 3,
    videoList: List.generate(
      3,
      (index) => Video(
        id: index + 1,
        videoTitle: "İçerik ${index + 1}",
        link: videoLink[index],
        duration: Duration(minutes: (index + 1) * 10),
      ),
    ),
  ),
  Course(
    title: "Mentör Buluşmaları",
    lessonCount: "",
    money: 0,
    rating: 4.3,
    imagePath: "assets/images/course_images/mentor.png",
    progress: 70,
    filterNumber: 3,
    startDate: DateTime.now(),
    endDate: DateTime.now(),
    spentTime: const Duration(days: 1),
    estimatedTime: const Duration(days: 1),
    videoCount: 2,
    videoList: List.generate(
      2,
      (index) => Video(
        id: index + 1,
        videoTitle: "İçerik ${index + 1}",
        link: videoLink[index],
        duration: Duration(minutes: (index + 1) * 10),
      ),
    ),
  ),
  Course(
    instructor: "Halit Enes Kalaycı",
    title: "Mobil Geliştirici (Flutter) - 1B",
    lessonCount: "",
    money: 0,
    rating: 4.1,
    imagePath: "assets/images/course_images/mobil_1B.png",
    progress: 80,
    filterNumber: 1,
    startDate: DateTime.now(),
    endDate: DateTime.now(),
    spentTime: const Duration(days: 2),
    estimatedTime: const Duration(days: 2),
    videoCount: 2,
    videoList: List.generate(
      2,
      (index) => Video(
        id: index + 1,
        videoTitle: "İçerik ${index + 1}",
        link: videoLink[index],
        duration: Duration(minutes: (index + 1) * 10),
      ),
    ),
  ),
  Course(
    title: "Mobil Geliştirme | Öğrenme Yolculuğu",
    lessonCount: "19 sa 28 dk",
    money: 0,
    rating: 4.1,
    imagePath: "assets/images/course_images/mobil_ogrenme.png",
    progress: 90,
    filterNumber: 1,
    startDate: DateTime.now(),
    endDate: DateTime.now(),
    spentTime: const Duration(days: 3),
    estimatedTime: const Duration(days: 3),
    videoCount: 2,
    videoList: List.generate(
      2,
      (index) => Video(
        id: index + 1,
        videoTitle: "İçerik ${index + 1}",
        link: videoLink[index],
        duration: Duration(minutes: (index + 1) * 30),
      ),
    ),
  ),
  Course(
    title: "Softskill: İletişim Becerileri",
    lessonCount: "7 sa 48 dk",
    money: 0,
    rating: 4.1,
    imagePath: "assets/images/course_images/softskill.png",
    progress: 90,
    filterNumber: 2,
    startDate: DateTime.now(),
    endDate: DateTime.now(),
    spentTime: const Duration(days: 3),
    estimatedTime: const Duration(days: 3),
    videoCount: 3,
    videoList: List.generate(
      3,
      (index) => Video(
        id: index + 1,
        videoTitle: "İçerik ${index + 1}",
        link: videoLink[index],
        duration: Duration(minutes: (index + 1) * 40),
      ),
    ),
  ),
  Course(
    title: "Softskill: İngilizce Beceriler",
    lessonCount: "3 sa 45 dk",
    money: 0,
    rating: 4.7,
    imagePath: "assets/images/course_images/softskill.png",
    progress: 80,
    filterNumber: 2,
    startDate: DateTime.now(),
    endDate: DateTime.now(),
    spentTime: const Duration(days: 1),
    estimatedTime: const Duration(days: 1),
    videoList: List.generate(
      1,
      (index) => Video(
        id: index + 1,
        videoTitle: "İçerik ${index + 1}",
        link: videoLink[index],
        duration: Duration(minutes: (index + 1) * 50),
      ),
    ),
    videoCount: 1,
  ),
  Course(
    title: "Softskill: İş Becerileri",
    lessonCount: "6 sa 38 dk",
    money: 0,
    rating: 4.1,
    imagePath: "assets/images/course_images/softskill.png",
    progress: 80,
    filterNumber: 2,
    startDate: DateTime.now(),
    endDate: DateTime.now(),
    spentTime: const Duration(days: 2),
    estimatedTime: const Duration(days: 2),
    videoCount: 3,
    videoList: List.generate(
      3,
      (index) => Video(
        id: index + 1,
        videoTitle: "İçerik ${index + 1}",
        link: videoLink[index],
        duration: Duration(minutes: (index + 1) * 15),
      ),
    ),
  ),
  Course(
    title: "Softskill: İş Yönetimi Becerileri 1",
    lessonCount: "7 sa 19 dk",
    money: 0,
    rating: 4.5,
    imagePath: "assets/images/course_images/softskill.png",
    progress: 90,
    filterNumber: 2,
    startDate: DateTime.now(),
    endDate: DateTime.now(),
    spentTime: const Duration(days: 2),
    estimatedTime: const Duration(days: 2),
    videoCount: 3,
    videoList: List.generate(
      3,
      (index) => Video(
        id: index + 1,
        videoTitle: "İçerik ${index + 1}",
        link: videoLink[index],
        duration: Duration(minutes: (index + 1) * 20),
      ),
    ),
  ),
  Course(
    title: "Softskill: İş Yönetimi Becerileri 2",
    lessonCount: "3 sa 16 dk",
    money: 0,
    rating: 4.1,
    imagePath: "assets/images/course_images/softskill.png",
    progress: 40,
    filterNumber: 2,
    startDate: DateTime.now(),
    endDate: DateTime.now(),
    spentTime: const Duration(days: 1),
    estimatedTime: const Duration(days: 1),
    videoCount: 2,
    videoList: List.generate(
      2,
      (index) => Video(
        id: index + 1,
        videoTitle: "İçerik ${index + 1}",
        link: videoLink[index],
        duration: Duration(minutes: (index + 1) * 30),
      ),
    ),
  ),
  Course(
    title: "Softskill: Kişisel Gelişim",
    lessonCount: "6 sa 40 dk",
    money: 0,
    rating: 4.7,
    imagePath: "assets/images/course_images/softskill.png",
    progress: 90,
    filterNumber: 2,
    startDate: DateTime.now(),
    endDate: DateTime.now(),
    spentTime: const Duration(days: 1),
    estimatedTime: const Duration(days: 1),
    videoCount: 3,
    videoList: List.generate(
      3,
      (index) => Video(
        id: index + 1,
        videoTitle: "İçerik ${index + 1}",
        link: videoLink[index],
        duration: Duration(minutes: (index + 1) * 20),
      ),
    ),
  ),
  Course(
    title: "Softskill: Planlama Becerileri",
    lessonCount: "3 sa 30 dk",
    money: 0,
    rating: 4.1,
    imagePath: "assets/images/course_images/softskill.png",
    progress: 45,
    filterNumber: 2,
    startDate: DateTime.now(),
    endDate: DateTime.now(),
    spentTime: const Duration(days: 1),
    estimatedTime: const Duration(days: 1),
    videoCount: 3,
    videoList: List.generate(
      3,
      (index) => Video(
        id: index + 1,
        videoTitle: "İçerik ${index + 1}",
        link: videoLink[index],
        duration: Duration(minutes: (index + 1) * 5),
      ),
    ),
  ),
];
