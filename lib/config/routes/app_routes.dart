import 'package:task_ui/app/presentation/screens/get_started.dart';
import 'package:task_ui/app/presentation/screens/onboarding.dart';
import 'package:task_ui/app/presentation/screens/start.dart';

import '../../app/presentation/screens/home.dart';

class AppRouts {
  static const String initialRoute = '/';
  static const String onBoardingScreen = '/onboarding';
  static const String getStartedScreen = '/getStarted';
  static const String homeScreen = '/home';
}

final routes = {
  AppRouts.initialRoute: (context) => const StartScreen(),
  AppRouts.onBoardingScreen: (context) => const OnBoardingScreen(),
  AppRouts.getStartedScreen: (context) => const GetStartScreen(),
  AppRouts.homeScreen: (context) => const HomeScreen(),
};
