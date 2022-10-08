import 'package:task_ui/app/presentation/screens/get_started.dart';
import 'package:task_ui/app/presentation/screens/onboarding.dart';
import 'package:task_ui/app/presentation/screens/start.dart';

class AppRouts {
  static const String initialRoute = '/';
  static const String onBoardingScreen = '/onboarding';
  static const String getStartedScreen = '/getStarted';
}

final routes = {
  AppRouts.initialRoute: (context) => const StartScreen(),
  AppRouts.onBoardingScreen: (context) => const OnBoardingScreen(),
  AppRouts.getStartedScreen: (context) => const GetStartScreen(),
};
