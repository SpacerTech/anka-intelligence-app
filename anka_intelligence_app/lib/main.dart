import 'package:anka_intelligence_app/configuration/providers/providers.dart';
import 'package:anka_intelligence_app/configuration/routes/app_routes.dart';
import 'package:anka_intelligence_app/constant/theme/theme.dart';
import 'package:anka_intelligence_app/firebase_options.dart';
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

@immutable
final class MyApp extends StatelessWidget {
  final bool? onboardingCompleted;
  const MyApp({super.key, this.onboardingCompleted});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: <BlocProvider>[
        authBlocProvider,
        profileBlocProvider,
        courseBlocProvider,
        classesBlocProvider,
        noteBlocProvider
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
