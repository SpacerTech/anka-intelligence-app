import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  final onboardingCompleted = prefs.getBool('onboarding_completed') ?? false;
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MyApp(onboardingCompleted: onboardingCompleted));
}

final navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  final bool? onboardingCompleted;
  const MyApp({Key? key, this.onboardingCompleted}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        authBlocProvider,
        profileBlocProvider,
        courseBlocProvider,
        catalogBlocProvider,
        classesBlocProvider,
        examBlocProvider,
        applicationBlocProvider,
        noteBlocProvider,
        announcementBlocProvider
      ],
      child: MaterialApp(
        navigatorKey: navigatorKey,
        title: 'Education App',
        debugShowCheckedModeBanner: false,
        theme: AppTheme.lightMode,
        darkTheme: AppTheme.darkMode,
        themeMode: ThemeMode.system,
        initialRoute:
            onboardingCompleted ?? false ? AppRoute.start : AppRoute.onboard,
        routes: AppRoute.routes,
      ),
    );
  }
}
