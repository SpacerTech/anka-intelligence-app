import 'package:anka_intelligence_app/pages/calendar/calendar_page.dart';
import 'package:anka_intelligence_app/pages/catalog/catalog_page.dart';
import 'package:anka_intelligence_app/pages/catalog_course/catalog_course_view.dart';
import 'package:anka_intelligence_app/pages/course/course_view_page.dart';
import 'package:anka_intelligence_app/pages/curved/curved_button.dart';

import 'package:anka_intelligence_app/pages/forgot/forgot_password_page.dart';
import 'package:anka_intelligence_app/pages/home/home_page.dart';
import 'package:anka_intelligence_app/pages/login/login_page.dart';
import 'package:anka_intelligence_app/pages/note/note_page.dart';
import 'package:anka_intelligence_app/pages/onboard/onboarding_animation.dart';
import 'package:anka_intelligence_app/pages/profile/profile_page.dart';
import 'package:anka_intelligence_app/pages/profile_edit/profile_edit_page.dart';
import 'package:anka_intelligence_app/pages/register/register_page.dart';
import 'package:anka_intelligence_app/pages/start/login_or_register.dart';
import 'package:anka_intelligence_app/pages/start/start_page.dart';
import 'package:anka_intelligence_app/pages/view_more/view_more_page.dart';
import 'package:flutter/material.dart';

typedef AppRouteMapFunction = Widget Function(BuildContext context);

final class AppRoute {
  const AppRoute._();

  static const String onboard = "/onboard";
  static const String login = "/login";
  static const String home = "/home";
  static const String search = "/search";
  static const String favourite = "/favourite";
  static const String profile = "/profile";
  static const String curved = "/curved";
  static const String viewmore = "/viewmore";
  static const String course = "/course";
  static const String catalogCourse = "/catalogCourse";
  static const String profiledit = "/profiledit";
  static const String loginOrRegister = "/loginOrRegister";
  static const String calendar = "/calendar";
  static const String setting = "/setting";
  static const String forgot = "/forgot";
  static const String catalog = "/catalog";
  static const String register = "/register";
  static const String personall = "/personal";
  static const String note = "/note";
  static const String start = "/start";
  static const String announcement = "/announcement";
  static const String quizStart = "/quizStart";
  static const String admin = "/admin";
  static const String exam = "/exam";

  static Map<String, AppRouteMapFunction> routes = {
    login: (context) => LoginPage(),
    home: (context) => const HomePage(),
    onboard: (context) => OnboardingAnimation(),
    profile: (context) => const ProfilePage(),
    curved: (context) => const CurvedNavBarWidget(),
    viewmore: (context) => const ViewMorePage(),
    course: (context) => const CourseViewPage(),
    catalogCourse: (context) => const CatalogCourseViewPage(),
    profiledit: (context) => const ProfileEditPage(),
    calendar: (context) => const CalendarPage(),
    forgot: (context) => ForgotPasswordPage(),
    catalog: (context) => const CatalogPage(),
    register: (context) => RegisterPage(),
    note: (context) => const NotePage(),
    start: (context) => const StartPage(),
    loginOrRegister: (context) => const LoginOrRegister(),
 
  };
}
